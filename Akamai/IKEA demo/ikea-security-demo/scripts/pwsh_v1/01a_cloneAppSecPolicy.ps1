######################################################################################################
## Description  : this script list all AppSec configs, their policies and clone the selected one    ##
##                then clone the selected policy into the selected Security config with the         ##
##                hostnames listed                                                                  ##
##                                                                                                  ##
## Pre-req      : Akamai powershell module v1                                                       ##
##                                                                                                  ##
## Author       : Stéphane Durand                                                                   ##
##                                                                                                  ##
## Last-update  : 2024-05-13                                                                        ##
######################################################################################################

# Sepcify the section to use in the EdgeRC file
$EdgeRCSection = "akamai-ps"

# Set the new cloned policy name
$NewPolicyName = "sdurand-test-clone-3"
$NewPolicyPrefix = "STC3"

# Get the list of AppSec configs first
$GetAppSecConfiguration = Get-AppSecConfigurations -Section $EdgeRCSection

# Then present it to the end user
if ($GetAppSecConfiguration.count -eq 1) {
    $ConfigName = $GetAppSecConfiguration.name
        # Set the configId for usage to list policies
        $ConfigId = $GetAppSecConfiguration.id
        # And the version number (latest)
        $ConfigVersion = $GetAppSecConfiguration.latestVersion
        Write-Host 'The template config will be ' -NoNewline
        Write-Host "($($GetAppSecConfiguration.name))`n" -ForegroundColor Yellow
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
        Write-Host 'The template config will be ' -NoNewline
        Write-Host "($($GetAppSecConfiguration[$configIndex].name))`n" -ForegroundColor Yellow
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

$GetAppSecPolicy = Get-AppSecPolicies @GetAppSecPolicyParams

# Then present it to the end user
if ($GetAppSecPolicy.count -eq 1) {
    # Set the policy name for further usage when cloning
    $PolicyId = $GetAppSecPolicy.policyId
    Write-Host 'The template policy will be ' -NoNewline
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
        Write-Host 'The template policy will be ' -NoNewline
        Write-Host "($($GetAppSecPolicy[$policiesIndex].policyName))`n" -ForegroundColor Yellow
    }
    else {
        Write-Host "Incorrect value." -ForegroundColor Red
    }
}   

else {
    Write-Host 'Sorry - no matching policy names found.' -ForegroundColor Red
}

# Cloning security policy
Write-Host "Cloning policy $PolicyName with ID: $PolicyId to $NewPolicyName in security config $ConfigName..."

$CopyAppSecSecurityPolicyParams = @{
    ConfigID                    = $ConfigId
    VersionNumber               = $ConfigVersion
    CreateFromSecurityPolicy    = $PolicyId
    PolicyName                  = $NewPolicyName
    PolicyPrefix                = $NewPolicyPrefix
    Section                     = $EdgeRCSection
}

Clone-AppSecSecurityPolicy @CopyAppSecSecurityPolicyParams

Write-Host "Security policy cloned"