######################################################################################################
## Description  : this script list all AppSec configs, their policies and clone the selected one    ##
##                then clone the selected policy into the selected Security config with the         ##
##                hostnames listed in a csv file                                                    ##
##                                                                                                  ##
## Author       : Stéphane Durand                                                                   ##
##                                                                                                  ##
## Last-update  : 2024-04-03                                                                        ##
######################################################################################################

# Sepcify the section to use in the EdgeRC file
$EdgeRCSection = "akamai-ps"

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
    Write-Host 'The template policy will be ' -NoNewline
    Write-Host "$PolicyName " -ForegroundColor Green -NoNewline
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
        Write-Host 'The template policy will be ' -NoNewline
        Write-Host "$PolicyName " -ForegroundColor Green -NoNewline
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
    ConfigID = $ConfigId
    VersionNumber = $ConfigVersion
    PolicyId = $PolicyId
    Section = $EdgeRCSection
}

$matchTargets = List-AppSecMatchTargets -IncludeChildObjectName @ListMatchTargetsParams

# Diaply the list of match target per type
$matchTargets.websiteTargets
$matchTargets.apiTargets