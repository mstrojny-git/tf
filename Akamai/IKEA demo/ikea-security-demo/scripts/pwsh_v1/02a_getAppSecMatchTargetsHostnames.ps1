######################################################################################################
## Description  : this script list all AppSec configs, their policies and clone the selected one    ##
##                then clone the selected policy into the selected Security config with the         ##
##                hostnames listed in a csv file                                                    ##
##                                                                                                  ##
## Author       : Stéphane Durand                                                                   ##
##                                                                                                  ##
## Last-update  : 2024-05-14                                                                        ##
######################################################################################################

# Sepcify the section to use in the EdgeRC file
$EdgeRCSection = "akamai-ps"

# Get today's date for file naming purpose
$Date = Get-Date -Format yyyy-MM-dd
$PastDate = (Get-Date).AddDays(-14).ToString("yyyy-MM-dd")

# Folder to store the log file
$LogFolder = "../onboard_log/"

# Get the list of AppSec configs first
$AppSecConfigsList = List-AppSecConfigurations -Section $EdgeRCSection

# Then present it to the end user
if ($AppSecConfigsList.count -eq 1) {
    $ConfigName = $AppSecConfigsList.name
        # Set the configId for usage to list policies
        $ConfigId = $AppSecConfigsList.id
        # And the version number (latest)
        $ConfigVersion = $AppSecConfigsList.latestVersion
        Write-Host 'The template config will be ' -NoNewline
        Write-Host "$ConfigName " -ForegroundColor Green -NoNewline
        Write-Host "($($AppSecConfigsList.AccountName))`n" -ForegroundColor Yellow
}

elseif ($AppSecConfigsList.count -gt 1) {
    Write-Host ""
    for ($i = 0; $i -lt $AppSecConfigsList.count; $i++) {
        Write-Host "$i. $($AppSecConfigsList[$i].name)"
    }
    $configIndex = Read-Host "`nWhich config do you want to use? [0-$($AppSecConfigsList.count-1)]"
    if (($configIndex -ge 0) -and ($configIndex -lt $AppSecConfigsList.count)) {
        $ConfigName = $AppSecConfigsList[$configIndex].name
        # Set the configId for usage to list policies
        $ConfigId = $AppSecConfigsList[$configIndex].id
        # And the version number (latest)
        $ConfigVersion = $AppSecConfigsList[$configIndex].latestVersion
        Write-Host 'The template config will be ' -NoNewline
        Write-Host "$ConfigName " -ForegroundColor Green -NoNewline
        Write-Host "($($AppSecConfigsList[$configIndex].AccountName))`n" -ForegroundColor Yellow
    }
    else {
        Write-Host "Incorrect value." -ForegroundColor Red
    }
}   

else {
    Write-Host 'Sorry - no matching config names found.' -ForegroundColor Red
}

# Get the list of policies in the config
$AppSecPoliciesList = List-AppSecPolicies  -ConfigID $ConfigId `
                                            -VersionNumber $ConfigVersion `
                                            -Section $EdgeRCSection

# Then present it to the end user
if ($AppSecPoliciesList.count -eq 1) {
    # Set the policy name for further usage when cloning
    $PolicyId = $AppSecPoliciesList.policyId
    $PolicyName = $AppSecPoliciesList.policyName
    Write-Host 'Monitored policy will be ' -NoNewline
    Write-Host "($($AppSecPoliciesList.policyName))`n" -ForegroundColor Yellow
}

elseif ($AppSecPoliciesList.count -gt 1) {
    Write-Host ""
    for ($i = 0; $i -lt $AppSecPoliciesList.count; $i++) {
        Write-Host "$i. $($AppSecPoliciesList[$i].policyName)"
    }
    $policiesIndex = Read-Host "`nWhich config do you want to use? [0-$($AppSecPoliciesList.count-1)]"
    if (($policiesIndex -ge 0) -and ($policiesIndex -lt $AppSecPoliciesList.count)) {
        # Set the policy name for further usage when cloning
        $PolicyId = $AppSecPoliciesList[$policiesIndex].policyId
        $PolicyName = $AppSecPoliciesList[$policiesIndex].policyName
        Write-Host 'Listed policy will be ' -NoNewline
        Write-Host "($($AppSecPoliciesList[$policiesIndex].policyName))`n" -ForegroundColor Yellow
    }
    else {
        Write-Host "Incorrect value." -ForegroundColor Red
    }
}   

else {
    Write-Host 'Sorry - no matching policy names found.' -ForegroundColor Red
}

# List Match targets
$ListMatchTargetsParams = @{
    ConfigID        = $ConfigId
    VersionNumber   = $ConfigVersion
    PolicyId        = $PolicyId
    Section         = $EdgeRCSection
}

$matchTargets = List-AppSecMatchTargets @ListMatchTargetsParams

# Set the output file name
$TodayFile = Join-Path $LogFolder ("{0}-{1}.txt" -f $PolicyName, $Date)

# Get the list of currently protected hostnames in a policy and write it to the output file
$matchTargets.websiteTargets.hostnames | Out-File $TodayFile

# Get past date file name
$PastDateFile = Join-Path $LogFolder ("{0}-{1}.txt" -f $PolicyName, $PastDate)


# Check if the files exist
if (!(Test-Path $TodayFile) -or !(Test-Path $PastDateFile)) {
    Write-Host "One or both of the files do not exist."
    return
}

# Read the lines from Today's file
$TodayHosts = Get-Content $TodayFile

# Read the lines from PastDate's file
$PastDateHosts = Get-Content $PastDateFile

# Initialize an empty array to store the common lines
$CommonHosts = @()

# Loop through each line in today's file
foreach ($line in $TodayHosts) {
    # Check if the line is present in yesterday's file
    if ($PastDateHosts -contains $line) {
        # Add the line to the array of common lines
        $CommonHosts += $line
    }
}

# Check if there are any common lines
if ($CommonHosts.Count -eq 0) {
    Write-Host "All hosts are up to date."
} else {
    # Print out the common lines as a single block of text
    Write-Host "The following host have been in alert policy for at least 14 days:`n$($CommonHosts -join "`n")"
}
