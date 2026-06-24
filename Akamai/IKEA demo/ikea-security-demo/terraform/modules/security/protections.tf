// Enable/Disable Protections for policy ikea-test
resource "akamai_appsec_waf_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.ikea-test.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.ikea-test.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.ikea-test.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.ikea-test.security_policy_id
  enabled            = false
}

resource "akamai_appsec_rate_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.ikea-test.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ikea-test.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.ikea-test.security_policy_id
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