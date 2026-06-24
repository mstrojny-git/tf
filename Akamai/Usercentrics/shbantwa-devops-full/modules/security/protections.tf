// Enable/Disable Protections for policy main
resource "akamai_appsec_waf_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.main.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_waf_protection.main.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.main.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.main.security_policy_id
  enabled            = true
}

resource "akamai_appsec_rate_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_malware_protection.main.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.main.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_reputation_protection.main.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_slowpost_protection.main.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : true
    }
  )
}
