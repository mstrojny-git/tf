######################################################################################################
## Description  : this script list all AppSec configs, their policies and list all hostnames in     ##
##                a match target. From there we can establish how long they have been there         ##
##                                                                                                  ##
## Pre-req      : Akamai powershell module v2                                                       ##
##                                                                                                  ##
## Author       : Stéphane Durand                                                                   ##
##                                                                                                  ##
## Last-update  : 2024-05-03                                                                        ##
######################################################################################################

# Sepcify the section to use in the EdgeRC file
$EdgeRCSection = "akamai-ps"

# Get the list of AppSec configs first
$GetAppSecConfiguration = Get-AppSecConfiguration -Section $EdgeRCSection

# Then present it to the end user
if ($GetAppSecConfiguration.count -eq 1) {
    $ConfigName = $GetAppSecConfiguration.name
        # Set the configId for usage to list policies
        $ConfigId = $GetAppSecConfiguration.id
        # And the version number (latest)
        $ConfigVersion = $GetAppSecConfiguration.latestVersion
        Write-Host 'Monitored config will be ' -NoNewline
        Write-Host "$ConfigName " -ForegroundColor Green -NoNewline
        Write-Host "($($GetAppSecConfiguration.AccountName))`n" -ForegroundColor Yellow
}

elseif ($GetAppSecConfiguration.count -gt 1) {
    Write-Host ""
    for ($i = 0; $i -lt $GetAppSecConfiguration.count; $i++) {
        Write-Host "$i. $($GetAppSecConfiguration[$i].name)"
    }
    $configIndex = Read-Host "`nWhich config do you want to use? [0-$($GetAppSecConfiguration.count-1)]"
    if (($configIndex -ge 0) -and ($configIndex -lt $GetAppSecConfiguration.count)) {
        $ConfigName = $GetAppSecConfiguration[$configIndex].name
        # Set the configId for usage to list policies
        $ConfigId = $GetAppSecConfiguration[$configIndex].id
        # And the version number (latest)
        $ConfigVersion = $GetAppSecConfiguration[$configIndex].latestVersion
        Write-Host 'Monitored config will be ' -NoNewline
        Write-Host "$ConfigName " -ForegroundColor Green -NoNewline
        Write-Host "($($GetAppSecConfiguration[$configIndex].AccountName))`n" -ForegroundColor Yellow
    }
    else {
        Write-Host "Incorrect value." -ForegroundColor Red
    }
}   

else {
    Write-Host 'Sorry - no matching config names found.' -ForegroundColor Red
}

# Get the list of policies in the config
$GetAppSecPolicyParams = @{
    ConfigID        = $ConfigId
    VersionNumber   = $ConfigVersion
    Section         = $EdgeRCSection
}

$GetAppSecPolicy = Get-AppSecPolicy @GetAppSecPolicyParams

# Then present it to the end user
if ($GetAppSecPolicy.count -eq 1) {
    # Set the policy name for further usage when cloning
    $PolicyId = $GetAppSecPolicy.policyId
    Write-Host 'Monitored policy will be ' -NoNewline
    Write-Host "$PolicyName " -ForegroundColor Green -NoNewline
    Write-Host "($($GetAppSecPolicy.policyName))`n" -ForegroundColor Yellow
}

elseif ($GetAppSecPolicy.count -gt 1) {
    Write-Host ""
    for ($i = 0; $i -lt $GetAppSecPolicy.count; $i++) {
        Write-Host "$i. $($GetAppSecPolicy[$i].policyName)"
    }
    $policiesIndex = Read-Host "`nWhich config do you want to use? [0-$($GetAppSecPolicy.count-1)]"
    if (($policiesIndex -ge 0) -and ($policiesIndex -lt $GetAppSecPolicy.count)) {
        # Set the policy name for further usage when cloning
        $PolicyName = $GetAppSecPolicy[$policiesIndex].policyName
        $PolicyId = $GetAppSecPolicy[$policiesIndex].policyId
        Write-Host 'Monitored policy will be ' -NoNewline
        Write-Host "$PolicyName " -ForegroundColor Green -NoNewline
        Write-Host "($($GetAppSecPolicy[$policiesIndex].policyName))`n" -ForegroundColor Yellow
    }
    else {
        Write-Host "Incorrect value." -ForegroundColor Red
    }
}   

else {
    Write-Host 'Sorry - no matching policy names found.' -ForegroundColor Red
}

$GetAppSecPolicySelectedHostnamesParams = @{
    VersionNumber   = $ConfigVersion
    ConfigID        = $ConfigId
    #PolicyID        = $PolicyId
    Section         = $EdgeRCSection
}

#Get-AppSecPolicyEvaluationHostnames @GetAppSecPolicySelectedHostnamesParams

Get-AppSecSelectedHostnames @GetAppSecPolicySelectedHostnamesParams