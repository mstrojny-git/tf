// Enable/Disable Protections for policy production
resource "akamai_appsec_waf_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_rate_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  bot_management_settings = jsonencode(
    {
      "enableBotManagement" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy testing
resource "akamai_appsec_waf_protection" "testing" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "testing" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  enabled            = true
}

resource "akamai_appsec_rate_protection" "testing" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "testing" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "testing" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  bot_management_settings = jsonencode(
    {
      "enableBotManagement" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
