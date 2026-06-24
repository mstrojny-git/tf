// Enable/Disable Protections for policy production
resource "akamai_appsec_waf_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_waf_protection.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.production.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_malware_protection.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_reputation_protection.production.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_slowpost_protection.production.security_policy_id
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
