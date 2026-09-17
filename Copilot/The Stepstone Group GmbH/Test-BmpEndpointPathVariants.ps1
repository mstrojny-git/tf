param(
    [string]$InputWorkbook = (Join-Path $PSScriptRoot 'stepstone-api-operations-updated.xlsx'),
    [string]$OutputWorkbook = (Join-Path $PSScriptRoot 'stepstone-api-all-hostnames-path-variant-results.xlsx'),
    [int]$DelayMilliseconds = 150
)

$ErrorActionPreference = 'Stop'
Import-Module ImportExcel -ErrorAction Stop
Import-Module Akamai.APIDefinitions -ErrorAction Stop

$pathVariants = @(
    [pscustomobject]@{ Name = 'Baseline'; Suffix = '' },
    [pscustomobject]@{ Name = 'Plain test path'; Suffix = '/test' },
    [pscustomobject]@{ Name = 'Test extension path'; Suffix = '/test.test' },
    [pscustomobject]@{ Name = 'Encoded slash'; Suffix = '/%2f' },
    [pscustomobject]@{ Name = 'Encoded slash uppercase'; Suffix = '/%2F' },
    [pscustomobject]@{ Name = 'Double-encoded slash'; Suffix = '/%252f' },
    [pscustomobject]@{ Name = 'Encoded dot'; Suffix = '/%2e' },
    [pscustomobject]@{ Name = 'Semicolon path'; Suffix = '/;' },
    [pscustomobject]@{ Name = 'Double slash path'; Suffix = '//test' },
    [pscustomobject]@{ Name = 'Query string'; Suffix = '?path-test=1' }
)

function Resolve-PathTemplate {
    param([string]$Path)

    $Path.Replace('{JobId}', '123456').Replace('{JD}', '123456')
}

function Join-RequestPath {
    param(
        [string]$BasePath,
        [string]$Suffix
    )

    $resolvedBasePath = Resolve-PathTemplate $BasePath
    if ([string]::IsNullOrWhiteSpace($Suffix)) {
        return $resolvedBasePath
    }

    if ($resolvedBasePath.EndsWith('/')) {
        return "$resolvedBasePath$($Suffix.TrimStart('/'))"
    }

    "$resolvedBasePath$Suffix"
}

function Get-EndpointHostnames {
    param(
        [int]$EndpointId,
        [string]$FallbackHostname
    )

    $apiEndpoint = Get-APIEndpoint -APIEndpointID $EndpointId `
        -EdgeRCFile 'C:\Users\mstrojny\Documents\Repos\.edgerc' `
        -Section 'stepstone'

    $hostnames = @($apiEndpoint.apiEndPointHosts | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
    if ($hostnames.Count -eq 0 -and -not [string]::IsNullOrWhiteSpace($FallbackHostname)) {
        return @($FallbackHostname)
    }

    return $hostnames
}

function Get-HttpResult {
    param(
        [string]$Url,
        [string]$VariantName
    )

    $requestStarted = Get-Date
    try {
        $response = Invoke-WebRequest `
            -Uri $Url `
            -Method GET `
            -MaximumRedirection 0 `
            -UseBasicParsing `
            -Headers @{ 'User-Agent' = 'Stepstone-BMP-path-validation/1.0' } `
            -ErrorAction Stop

        [pscustomobject]@{
            Variant = $VariantName
            Status = [int]$response.StatusCode
            StatusText = $response.StatusDescription
            Location = [string]$response.Headers['Location']
            ContentType = [string]$response.Headers['Content-Type']
            ResponseBytes = if ($response.Content) { [Text.Encoding]::UTF8.GetByteCount($response.Content) } else { 0 }
            Error = ''
            DurationMs = [int]((Get-Date) - $requestStarted).TotalMilliseconds
        }
    }
    catch {
        $httpResponse = $_.Exception.Response
        if ($httpResponse) {
            [pscustomobject]@{
                Variant = $VariantName
                Status = [int]$httpResponse.StatusCode
                StatusText = [string]$httpResponse.StatusDescription
                Location = [string]$httpResponse.Headers['Location']
                ContentType = [string]$httpResponse.Headers['Content-Type']
                ResponseBytes = 0
                Error = ''
                DurationMs = [int]((Get-Date) - $requestStarted).TotalMilliseconds
            }
        }
        else {
            [pscustomobject]@{
                Variant = $VariantName
                Status = 'CLIENT_ERROR'
                StatusText = ''
                Location = ''
                ContentType = ''
                ResponseBytes = 0
                Error = $_.Exception.Message
                DurationMs = [int]((Get-Date) - $requestStarted).TotalMilliseconds
            }
        }
    }
}

$inputRows = @(Import-Excel -Path $InputWorkbook -WorksheetName 'API Operations')
$results = [System.Collections.Generic.List[object]]::new()
$skipped = [System.Collections.Generic.List[object]]::new()
$hostnameCache = @{}

foreach ($row in $inputRows) {
    if ([string]::IsNullOrWhiteSpace([string]$row.'Hostname for tests') -or [string]::IsNullOrWhiteSpace([string]$row.Path)) {
        $skipped.Add([pscustomobject]@{
            EndpointId = $row.EndpointId
            Path = $row.Path
            Reason = 'Pusty hostname lub ścieżka w arkuszu wejściowym'
        })
        continue
    }

    $endpointId = [int]$row.EndpointId
    if (-not $hostnameCache.ContainsKey($endpointId)) {
        $hostnameCache[$endpointId] = @(Get-EndpointHostnames -EndpointId $endpointId -FallbackHostname ([string]$row.'Hostname for tests'))
    }

    $basePath = Resolve-PathTemplate ([string]$row.Path)
    foreach ($hostname in $hostnameCache[$endpointId]) {
        foreach ($variant in $pathVariants) {
            $requestPath = Join-RequestPath -BasePath ([string]$row.Path) -Suffix $variant.Suffix
            $url = "https://$hostname$requestPath"
            $httpResult = Get-HttpResult -Url $url -VariantName $variant.Name
            $redirected = -not [string]::IsNullOrWhiteSpace($httpResult.Location)
            $interpretation = switch ($httpResult.Status) {
                200 { if ($redirected) { '200, ale odpowiedź zawiera przekierowanie' } else { 'Odpowiedź OK bez przekierowania' } }
                { $_ -in 301,302,303,307,308 } { 'Przekierowanie HTTP' }
                404 { 'Nie znaleziono zasobu' }
                403 { 'Dostęp zabroniony lub blokada' }
                400 { 'Nieprawidłowy URL lub żądanie' }
                default { 'Wymaga ręcznej interpretacji' }
            }

            $results.Add([pscustomobject][ordered]@{
                EndpointId = $endpointId
                ApiName = $row.'API Name / Production Version'
                EndpointName = $row.EndpointName
                Hostname = $hostname
                BasePath = $basePath
                Variant = $variant.Name
                AddedSuffix = $variant.Suffix
                TestedUrl = $url
                MethodUsed = 'GET'
                ConfiguredMethod = $row.Method
                OperationId = $row.OperationId
                Status = $httpResult.Status
                StatusText = $httpResult.StatusText
                Location = $httpResult.Location
                Redirected = if ($redirected) { 'YES' } else { 'NO' }
                ContentType = $httpResult.ContentType
                ResponseBytes = $httpResult.ResponseBytes
                Interpretation = $interpretation
                Error = $httpResult.Error
                DurationMs = $httpResult.DurationMs
            })

            if ($DelayMilliseconds -gt 0) {
                Start-Sleep -Milliseconds $DelayMilliseconds
            }
        }
    }
}

if (Test-Path $OutputWorkbook) {
    Remove-Item $OutputWorkbook -Force
}

$results | Export-Excel -Path $OutputWorkbook -WorksheetName 'Test Results' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
if ($skipped.Count -gt 0) {
    $skipped | Export-Excel -Path $OutputWorkbook -WorksheetName 'Skipped Rows' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
}

$summary = @(
    [pscustomobject]@{ Item = 'Input workbook'; Value = $InputWorkbook },
    [pscustomobject]@{ Item = 'Output workbook'; Value = $OutputWorkbook },
    [pscustomobject]@{ Item = 'Rows tested'; Value = (@($inputRows).Count - $skipped.Count) },
    [pscustomobject]@{ Item = 'Rows skipped'; Value = $skipped.Count },
    [pscustomobject]@{ Item = 'GET requests sent'; Value = $results.Count },
    [pscustomobject]@{ Item = 'Variants per tested row'; Value = $pathVariants.Count },
    [pscustomobject]@{ Item = 'Hostname coverage'; Value = 'All hostnames currently assigned to each API Definition were tested.' },
    [pscustomobject]@{ Item = 'Interpretation'; Value = 'Status and Location describe the public HTTP response; they do not prove which internal CDN or origin handled the request.' }
)
$summary | Export-Excel -Path $OutputWorkbook -WorksheetName 'Read Me' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow

Write-Output "Created: $OutputWorkbook"
Write-Output "Tested rows: $(@($inputRows).Count - $skipped.Count)"
Write-Output "Skipped rows: $($skipped.Count)"
Write-Output "GET requests: $($results.Count)"