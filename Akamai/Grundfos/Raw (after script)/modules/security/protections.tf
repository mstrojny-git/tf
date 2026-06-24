// Enable/Disable Protections for policy waf
resource "akamai_appsec_waf_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.waf.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_waf_protection.waf.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.waf.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.waf.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_malware_protection.waf.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.waf.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_reputation_protection.waf.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_slowpost_protection.waf.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : true,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy main_policy
resource "akamai_appsec_waf_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.main_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_waf_protection.main_policy.security_policy_id
  enabled            = false
}

resource "akamai_appsec_ip_geo_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.main_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.main_policy.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_malware_protection.main_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.main_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_reputation_protection.main_policy.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_slowpost_protection.main_policy.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : true,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
