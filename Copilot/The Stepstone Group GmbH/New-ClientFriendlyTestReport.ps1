param(
    [string]$InputWorkbook = (Join-Path $PSScriptRoot 'stepstone-api-all-hostnames-path-variant-results.xlsx'),
    [string]$OutputWorkbook = (Join-Path $PSScriptRoot 'stepstone-api-path-test-client-report.xlsx')
)

$ErrorActionPreference = 'Stop'
Import-Module ImportExcel -ErrorAction Stop

$source = @(Import-Excel -Path $InputWorkbook -WorksheetName 'Test Results')
$deduplicated = @(
    $source |
        Group-Object EndpointId, Hostname, BasePath, Variant, AddedSuffix |
        ForEach-Object {
            $_.Group |
                Sort-Object @{ Expression = { if ($_.ConfiguredMethod -eq 'GET') { 0 } else { 1 } } } |
                Select-Object -First 1
        }
)

$results = foreach ($row in $deduplicated) {
    [pscustomobject][ordered]@{
        'Endpoint ID' = $row.EndpointId
        'API Name / Production Version' = $row.ApiName
        'Endpoint Name' = $row.EndpointName
        'Hostname Tested' = $row.Hostname
        'Base Path' = $row.BasePath
        'Test Variant' = $row.Variant
        'Added URL Part' = $row.AddedSuffix
        'Tested URL' = $row.TestedUrl
        'Operation ID' = $row.OperationId
        'HTTP Status' = $row.Status
        'Status Description' = $row.StatusText
        'Redirect Detected' = $row.Redirected
        'Result Summary' = $row.Interpretation
        'Technical Error' = $row.Error
    }
}

$statusSummary = $results |
    Group-Object 'HTTP Status' |
    Sort-Object Name |
    ForEach-Object {
        [pscustomobject][ordered]@{
            'HTTP Status' = $_.Name
            'Number of Tests' = $_.Count
            'Plain-English Meaning' = switch ($_.Name) {
                '200' { 'The server returned a normal response. Review the page content before treating this as a successful endpoint match.' }
                '301' { 'The server returned a permanent redirect.' }
                '302' { 'The server returned a temporary redirect.' }
                '403' { 'The request was denied or blocked.' }
                '404' { 'The requested path was not found.' }
                'CLIENT_ERROR' { 'The local HTTP client could not complete the request. Retest with another client if needed.' }
                default { 'Review this response manually.' }
            }
        }
    }

$overview = @(
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Source report'; Value = (Split-Path $InputWorkbook -Leaf) },
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Unique endpoint, hostname, path, and test-variant combinations'; Value = $results.Count },
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Duplicate GET/POST test rows removed'; Value = ($source.Count - $results.Count) },
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Request method used for every test'; Value = 'GET' },
    [pscustomobject]@{ Section = 'Interpretation'; Detail = 'What the results show'; Value = 'Public HTTP behavior for each URL variation. The result does not independently prove whether Bot Manager Premier handled the request.' },
    [pscustomobject]@{ Section = 'Interpretation'; Detail = 'Recommended follow-up'; Value = 'For a conclusive BMP assessment, correlate tested URLs with Akamai security event logs and origin application logs.' }
)

$legend = @(
    [pscustomobject]@{ Colour = 'Green'; Meaning = 'HTTP 200: normal server response. Confirm page content before considering it an endpoint match.' },
    [pscustomobject]@{ Colour = 'Blue'; Meaning = 'HTTP 301/302: redirect response. Check the destination separately.' },
    [pscustomobject]@{ Colour = 'Red'; Meaning = 'HTTP 403: request denied or blocked.' },
    [pscustomobject]@{ Colour = 'Amber'; Meaning = 'HTTP 404: path not found.' },
    [pscustomobject]@{ Colour = 'Grey'; Meaning = 'Client-side error: the local test tool did not receive a usable HTTP response.' }
)

if (Test-Path $OutputWorkbook) {
    Remove-Item $OutputWorkbook -Force
}

$overview | Export-Excel -Path $OutputWorkbook -WorksheetName 'Overview' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
$statusSummary | Export-Excel -Path $OutputWorkbook -WorksheetName 'Status Summary' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
$legend | Export-Excel -Path $OutputWorkbook -WorksheetName 'Colour Guide' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
$results | Export-Excel -Path $OutputWorkbook -WorksheetName 'Detailed Results' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow

$package = Open-ExcelPackage -Path $OutputWorkbook
$headerColour = [System.Drawing.Color]::FromArgb(31, 78, 121)
$headerTextColour = [System.Drawing.Color]::White
$green = [System.Drawing.Color]::FromArgb(198, 239, 206)
$blue = [System.Drawing.Color]::FromArgb(189, 215, 238)
$red = [System.Drawing.Color]::FromArgb(255, 199, 206)
$amber = [System.Drawing.Color]::FromArgb(255, 235, 156)
$grey = [System.Drawing.Color]::FromArgb(217, 217, 217)

foreach ($worksheet in $package.Workbook.Worksheets) {
    $worksheet.View.FreezePanes(2, 1)
    $worksheet.Cells[1, 1, 1, $worksheet.Dimension.End.Column].Style.Fill.PatternType = 'Solid'
    $worksheet.Cells[1, 1, 1, $worksheet.Dimension.End.Column].Style.Fill.BackgroundColor.SetColor($headerColour)
    $worksheet.Cells[1, 1, 1, $worksheet.Dimension.End.Column].Style.Font.Color.SetColor($headerTextColour)
    $worksheet.Cells[1, 1, 1, $worksheet.Dimension.End.Column].Style.Font.Bold = $true
    $worksheet.Cells[$worksheet.Dimension.Address].Style.VerticalAlignment = 'Top'
}

$details = $package.Workbook.Worksheets['Detailed Results']
$lastRow = $details.Dimension.End.Row
$details.Column(8).Width = 55
$details.Column(13).Width = 45
$details.Column(14).Width = 45
$details.Cells[2, 1, $lastRow, 14].Style.WrapText = $true

foreach ($statusStyle in @(
    @{ Status = '200'; Colour = $green },
    @{ Status = '301'; Colour = $blue },
    @{ Status = '302'; Colour = $blue },
    @{ Status = '403'; Colour = $red },
    @{ Status = '404'; Colour = $amber },
    @{ Status = 'CLIENT_ERROR'; Colour = $grey }
)) {
    $format = $details.ConditionalFormatting.AddEqual("J2:J$lastRow")
    $format.Formula = $statusStyle.Status
    $format.Style.Fill.PatternType = 'Solid'
    $format.Style.Fill.BackgroundColor.Color = $statusStyle.Colour
}

$guide = $package.Workbook.Worksheets['Colour Guide']
$guide.Cells['A2'].Style.Fill.PatternType = 'Solid'
$guide.Cells['A2'].Style.Fill.BackgroundColor.SetColor($green)
$guide.Cells['A3'].Style.Fill.PatternType = 'Solid'
$guide.Cells['A3'].Style.Fill.BackgroundColor.SetColor($blue)
$guide.Cells['A4'].Style.Fill.PatternType = 'Solid'
$guide.Cells['A4'].Style.Fill.BackgroundColor.SetColor($red)
$guide.Cells['A5'].Style.Fill.PatternType = 'Solid'
$guide.Cells['A5'].Style.Fill.BackgroundColor.SetColor($amber)
$guide.Cells['A6'].Style.Fill.PatternType = 'Solid'
$guide.Cells['A6'].Style.Fill.BackgroundColor.SetColor($grey)

Close-ExcelPackage $package
Write-Output "Created: $OutputWorkbook"
Write-Output "Source rows: $($source.Count)"
Write-Output "Client report rows: $($results.Count)"