param(
    [string]$InputWorkbook = (Join-Path $PSScriptRoot 'stepstone-api-path-test-client-report.xlsx'),
    [string]$OutputWorkbook = (Join-Path $PSScriptRoot 'stepstone-api-path-test-client-report-workflow-aware.xlsx')
)

$ErrorActionPreference = 'Stop'
Import-Module ImportExcel -ErrorAction Stop

$workflowDependentOperations = @{
    '9cd99273-0828-4493-a84f-5e685f95b3bb' = [pscustomobject]@{
        EndpointId = 721059
        ApiName = 'Tecoloco BMP (production v3)'
        EndpointName = 'Tecoloco BMP'
        Hostname = 'www.tecoloco.com.sv'
        BasePath = '/5{JobId}/{Coname}.aspx'
        OperationId = '9cd99273-0828-4493-a84f-5e685f95b3bb'
    }
    '16dc5fed-8833-439a-9412-c6e810685578' = [pscustomobject]@{
        EndpointId = 754870
        ApiName = 'Jobs_SaonGroup (production v8)'
        EndpointName = 'Jobs_SaonGroup'
        Hostname = 'en.jobs.lu'
        BasePath = '/{JD}_jobs.aspx'
        OperationId = '16dc5fed-8833-439a-9412-c6e810685578'
    }
}

$source = @(Import-Excel -Path $InputWorkbook -WorksheetName 'Detailed Results')
$testedResults = @(
    $source |
        Where-Object { $_.'Operation ID' -notin $workflowDependentOperations.Keys } |
        Select-Object *
)

$workflowRows = foreach ($operation in $workflowDependentOperations.Values) {
    [pscustomobject][ordered]@{
        'Endpoint ID' = $operation.EndpointId
        'API Name / Production Version' = $operation.ApiName
        'Endpoint Name' = $operation.EndpointName
        'Hostname Tested' = $operation.Hostname
        'Base Path' = $operation.BasePath
        'Test Variant' = 'Not tested'
        'Added URL Part' = ''
        'Tested URL' = ''
        'Operation ID' = $operation.OperationId
        'HTTP Status' = 'NOT TESTED'
        'Status Description' = 'Workflow-dependent path'
        'Redirect Detected' = 'N/A'
        'Result Summary' = 'Not tested: the required dynamic path values and user workflow could not be reproduced safely.'
        'Technical Error' = 'A valid JobId/JD and Coname value are required to test this endpoint meaningfully.'
    }
}

$finalResults = @($testedResults) + @($workflowRows)
$statusSummary = $finalResults |
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
                'NOT TESTED' { 'The endpoint requires dynamic values from a real application workflow and was intentionally excluded from URL-variation testing.' }
                default { 'Review this response manually.' }
            }
        }
    }

$overview = @(
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Source report'; Value = (Split-Path $InputWorkbook -Leaf) },
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Unique HTTP test results'; Value = $testedResults.Count },
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Workflow-dependent operations not tested'; Value = $workflowRows.Count },
    [pscustomobject]@{ Section = 'Scope'; Detail = 'Request method used for every test'; Value = 'GET' },
    [pscustomobject]@{ Section = 'Testing limitation'; Detail = 'Dynamic endpoint paths'; Value = 'Two endpoint paths contain variables. They need valid values produced by the application workflow, so placeholder values would only produce non-representative results.' },
    [pscustomobject]@{ Section = 'Interpretation'; Detail = 'What the results show'; Value = 'Public HTTP behavior for each URL variation. The result does not independently prove whether Bot Manager Premier handled the request.' },
    [pscustomobject]@{ Section = 'Interpretation'; Detail = 'Recommended follow-up'; Value = 'For a conclusive BMP assessment, correlate tested URLs with Akamai security event logs and origin application logs.' }
)

$legend = @(
    [pscustomobject]@{ Colour = 'Green'; Meaning = 'HTTP 200: normal server response. Confirm page content before considering it an endpoint match.' },
    [pscustomobject]@{ Colour = 'Blue'; Meaning = 'HTTP 301/302: redirect response. Check the destination separately.' },
    [pscustomobject]@{ Colour = 'Red'; Meaning = 'HTTP 403: request denied or blocked.' },
    [pscustomobject]@{ Colour = 'Amber'; Meaning = 'HTTP 404: path not found.' },
    [pscustomobject]@{ Colour = 'Grey'; Meaning = 'Not tested or client-side error.' }
)

if (Test-Path $OutputWorkbook) {
    Remove-Item $OutputWorkbook -Force
}

$overview | Export-Excel -Path $OutputWorkbook -WorksheetName 'Overview' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
$statusSummary | Export-Excel -Path $OutputWorkbook -WorksheetName 'Status Summary' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
$legend | Export-Excel -Path $OutputWorkbook -WorksheetName 'Colour Guide' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow
$finalResults | Export-Excel -Path $OutputWorkbook -WorksheetName 'Detailed Results' -AutoSize -AutoFilter -FreezeTopRow -BoldTopRow

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
$details.Column(13).Width = 55
$details.Column(14).Width = 55
$details.Cells[2, 1, $lastRow, 14].Style.WrapText = $true

foreach ($statusStyle in @(
    @{ Status = '200'; Colour = $green },
    @{ Status = '301'; Colour = $blue },
    @{ Status = '302'; Colour = $blue },
    @{ Status = '403'; Colour = $red },
    @{ Status = '404'; Colour = $amber },
    @{ Status = 'CLIENT_ERROR'; Colour = $grey },
    @{ Status = 'NOT TESTED'; Colour = $grey }
)) {
    $format = $details.ConditionalFormatting.AddEqual("J2:J$lastRow")
    $format.Formula = $statusStyle.Status
    $format.Style.Fill.PatternType = 'Solid'
    $format.Style.Fill.BackgroundColor.Color = $statusStyle.Colour
}

$workflowStartRow = $testedResults.Count + 2
$details.Cells[$workflowStartRow, 1, $lastRow, 14].Style.Fill.PatternType = 'Solid'
$details.Cells[$workflowStartRow, 1, $lastRow, 14].Style.Fill.BackgroundColor.SetColor($grey)

$guide = $package.Workbook.Worksheets['Colour Guide']
foreach ($rowStyle in @(@{ Row = 2; Colour = $green }, @{ Row = 3; Colour = $blue }, @{ Row = 4; Colour = $red }, @{ Row = 5; Colour = $amber }, @{ Row = 6; Colour = $grey })) {
    $guide.Cells["A$($rowStyle.Row)"].Style.Fill.PatternType = 'Solid'
    $guide.Cells["A$($rowStyle.Row)"].Style.Fill.BackgroundColor.SetColor($rowStyle.Colour)
}

Close-ExcelPackage $package
Write-Output "Created: $OutputWorkbook"
Write-Output "HTTP test rows: $($testedResults.Count)"
Write-Output "Workflow-dependent rows: $($workflowRows.Count)"