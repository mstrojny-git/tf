######################################################################################################
## Description  : this script add a path for exception to Rule 3000180                              ##                                     ##
##                                                                                                  ##
## Pre-req      : Akamai powershell module v1                                                       ##
##                                                                                                  ##
## Author       : Stéphane Durand                                                                   ##
##                                                                                                  ##
## Last-update  : 2024-05-14                                                                        ##
######################################################################################################

# Sepcify the section to use in the EdgeRC file
$EdgeRCSection = "akamai-ps"

# Rule exception on path
$RuleID             = "3000180"
$RuleExceptionPaths = @("/item3", "/test11")

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
        Write-Host 'The template config will be ' -NoNewline
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

$GetAppSecPolicy = Get-AppSecPolicies @GetAppSecPolicyParams

# Then present it to the end user
if ($GetAppSecPolicy.count -eq 1) {
    # Set the policy name for further usage when cloning
    $PolicyId = $GetAppSecPolicy.policyId
    Write-Host 'Looking at policy ' -NoNewline
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
        Write-Host 'Looking at the rule in config ' -NoNewline
        Write-Host "($($GetAppSecPolicy[$policiesIndex].policyName))`n" -ForegroundColor Yellow
    }
    else {
        Write-Host "Incorrect value." -ForegroundColor Red
    }
}   

else {
    Write-Host 'Sorry - no matching policy names found.' -ForegroundColor Red
}

$GetAppSecPolicyRuleParams = @{
    ConfigID        = $ConfigId
    VersionNumber   = $ConfigVersion
    RuleID          = $RuleID
    PolicyID        = $PolicyId
    Section         = $EdgeRCSection
}

$RuleConditions = Get-AppSecPolicyRuleConditions @GetAppSecPolicyRuleParams

Write-Host "Current exceptions paths"
$RuleConditions.advancedExceptions.conditions.paths

# Add the new exception
$RuleExceptionPaths += $RuleConditions.advancedExceptions.conditions.paths
$AppSecPolicyRuleConditionBody = [PSCustomObject]@{
    "conditionOperator" = "AND"
    "conditions" = ,[PSCustomObject]@{
            "type" = "pathMatch"
            "paths" = $RuleExceptionPaths
            "positiveMatch" = $true
        }
}   

$SetAppSecPolicyRuleParams = @{
    ConfigID        = $ConfigId
    VersionNumber   = $ConfigVersion
    RuleID          = $RuleID
    PolicyID        = $PolicyId
    Section         = $EdgeRCSection
}

$AppSecPolicyRuleConditionBody | Set-AppSecPolicyRuleConditions @SetAppSecPolicyRuleParams

# Display the new exception
$RuleConditions = Get-AppSecPolicyRuleConditions @GetAppSecPolicyRuleParams
Write-Host "New exceptions paths"
$RuleConditions.advancedExceptions.conditions.paths