// Enable/Disable Protections for policy fsattract
resource "akamai_appsec_waf_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.fsattract.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.fsattract.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.fsattract.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.fsattract.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.fsattract.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.fsattract.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.fsattract.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy igift_ingka
resource "akamai_appsec_waf_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.igift_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.igift_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.igift_ingka.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.igift_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.igift_ingka.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy cusmasps
resource "akamai_appsec_waf_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.cusmasps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.cusmasps.security_policy_id
  enabled            = false
}

resource "akamai_appsec_ip_geo_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.cusmasps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.cusmasps.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.cusmasps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.cusmasps.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy generictestalertonly
resource "akamai_appsec_waf_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.generictestalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.generictestalertonly.security_policy_id
  enabled            = false
}

resource "akamai_appsec_malware_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.generictestalertonly.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.generictestalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.generictestalertonly.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy skapa
resource "akamai_appsec_waf_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.skapa.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.skapa.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.skapa.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.skapa.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.skapa.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.skapa.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.skapa.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy asisonline
resource "akamai_appsec_waf_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.asisonline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.asisonline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.asisonline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.asisonline.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.asisonline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.asisonline.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.asisonline.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy ukapps
resource "akamai_appsec_waf_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.ukapps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.ukapps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.ukapps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.ukapps.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.ukapps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.ukapps.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.ukapps.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy oauthcoworkers
resource "akamai_appsec_waf_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.oauthcoworkers.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.oauthcoworkers.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.oauthcoworkers.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.oauthcoworkers.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.oauthcoworkers.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy storeevents
resource "akamai_appsec_waf_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.storeevents.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.storeevents.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.storeevents.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.storeevents.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.storeevents.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.storeevents.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.storeevents.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy reside
resource "akamai_appsec_waf_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.reside.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.reside.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.reside.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.reside.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.reside.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.reside.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.reside.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy dataapp
resource "akamai_appsec_waf_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.dataapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.dataapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.dataapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.dataapp.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.dataapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.dataapp.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.dataapp.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy genericingkadeny
resource "akamai_appsec_waf_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.genericingkadeny.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.genericingkadeny.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.genericingkadeny.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.genericingkadeny.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.genericingkadeny.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy customerapp
resource "akamai_appsec_waf_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.customerapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.customerapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.customerapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.customerapp.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.customerapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.customerapp.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.customerapp.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy www_ingka
resource "akamai_appsec_waf_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.www_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.www_ingka.security_policy_id
  enabled            = false
}

resource "akamai_appsec_ip_geo_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.www_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.www_ingka.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.www_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.www_ingka.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy genericingkaalertonly
resource "akamai_appsec_waf_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.genericingkaalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.genericingkaalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.genericingkaalertonly.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.genericingkaalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.genericingkaalertonly.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy spareparts
resource "akamai_appsec_waf_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.spareparts.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.spareparts.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.spareparts.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.spareparts.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.spareparts.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.spareparts.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.spareparts.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy atkomst
resource "akamai_appsec_waf_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.atkomst.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.atkomst.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.atkomst.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.atkomst.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.atkomst.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.atkomst.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.atkomst.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy iquote
resource "akamai_appsec_waf_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.iquote.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.iquote.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.iquote.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.iquote.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.iquote.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.iquote.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.iquote.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy lotta
resource "akamai_appsec_waf_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.lotta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.lotta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.lotta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.lotta.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.lotta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.lotta.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.lotta.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy publicera
resource "akamai_appsec_waf_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.publicera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.publicera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.publicera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.publicera.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.publicera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.publicera.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.publicera.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy dorfood
resource "akamai_appsec_waf_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.dorfood.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.dorfood.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.dorfood.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.dorfood.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.dorfood.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.dorfood.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.dorfood.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy flytta
resource "akamai_appsec_waf_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.flytta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.flytta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.flytta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.flytta.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.flytta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.flytta.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.flytta.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy buyback
resource "akamai_appsec_waf_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.buyback.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.buyback.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.buyback.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.buyback.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.buyback.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.buyback.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.buyback.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy datacatalog
resource "akamai_appsec_waf_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.datacatalog.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.datacatalog.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.datacatalog.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.datacatalog.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.datacatalog.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.datacatalog.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy prodloyalty
resource "akamai_appsec_waf_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.prodloyalty.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.prodloyalty.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.prodloyalty.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.prodloyalty.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.prodloyalty.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy upptacka
resource "akamai_appsec_waf_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.upptacka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.upptacka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.upptacka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.upptacka.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.upptacka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.upptacka.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.upptacka.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy delta
resource "akamai_appsec_waf_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.delta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.delta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.delta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.delta.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.delta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.delta.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.delta.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy nfwapp
resource "akamai_appsec_waf_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.nfwapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.nfwapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.nfwapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.nfwapp.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.nfwapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.nfwapp.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy engineeringbaseline
resource "akamai_appsec_waf_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.engineeringbaseline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.engineeringbaseline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.engineeringbaseline.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.engineeringbaseline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.engineeringbaseline.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy uthingka
resource "akamai_appsec_waf_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.uthingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.uthingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.uthingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.uthingka.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.uthingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.uthingka.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.uthingka.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy service_offer
resource "akamai_appsec_waf_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.service_offer.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.service_offer.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.service_offer.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.service_offer.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.service_offer.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.service_offer.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.service_offer.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy optimera
resource "akamai_appsec_waf_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.optimera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.optimera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.optimera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.optimera.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.optimera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.optimera.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.optimera.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy salesassistant
resource "akamai_appsec_waf_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.salesassistant.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.salesassistant.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.salesassistant.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.salesassistant.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.salesassistant.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.salesassistant.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
