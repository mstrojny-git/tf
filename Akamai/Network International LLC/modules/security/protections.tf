// Enable/Disable Protections for policy ni_corporate_api_
resource "akamai_appsec_security_policy_protections" "ni_corporate_api_" {
  config_id                         = local.config_id
  security_policy_id                = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  apply_account_protection_controls = false
  apply_api_constraints             = false
  apply_application_layer_controls  = true
  apply_botman_controls             = true
  apply_malware_controls            = false
  apply_network_layer_controls      = true
  apply_rate_controls               = true
  apply_reputation_controls         = true
  apply_slow_post_controls          = true
  apply_url_protection_controls     = false
}

resource "akamai_botman_bot_management_settings" "ni_corporate_api_" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy_protections.ni_corporate_api_.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy ni_corporate_websites
resource "akamai_appsec_security_policy_protections" "ni_corporate_websites" {
  config_id                         = local.config_id
  security_policy_id                = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  apply_account_protection_controls = false
  apply_api_constraints             = false
  apply_application_layer_controls  = true
  apply_botman_controls             = true
  apply_malware_controls            = false
  apply_network_layer_controls      = true
  apply_rate_controls               = true
  apply_reputation_controls         = true
  apply_slow_post_controls          = true
  apply_url_protection_controls     = false
}

resource "akamai_botman_bot_management_settings" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy_protections.ni_corporate_websites.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy neo_production
resource "akamai_appsec_security_policy_protections" "neo_production" {
  config_id                         = local.config_id
  security_policy_id                = akamai_appsec_security_policy.neo_production.security_policy_id
  apply_account_protection_controls = false
  apply_api_constraints             = false
  apply_application_layer_controls  = true
  apply_botman_controls             = true
  apply_malware_controls            = false
  apply_network_layer_controls      = true
  apply_rate_controls               = true
  apply_reputation_controls         = true
  apply_slow_post_controls          = true
  apply_url_protection_controls     = false
}

resource "akamai_botman_bot_management_settings" "neo_production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy_protections.neo_production.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy onboarding_alert
resource "akamai_appsec_security_policy_protections" "onboarding_alert" {
  config_id                         = local.config_id
  security_policy_id                = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  apply_account_protection_controls = false
  apply_api_constraints             = true
  apply_application_layer_controls  = true
  apply_botman_controls             = true
  apply_malware_controls            = false
  apply_network_layer_controls      = true
  apply_rate_controls               = true
  apply_reputation_controls         = true
  apply_slow_post_controls          = true
  apply_url_protection_controls     = false
}

resource "akamai_botman_bot_management_settings" "onboarding_alert" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy_protections.onboarding_alert.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy network_international
resource "akamai_appsec_security_policy_protections" "network_international" {
  config_id                         = local.config_id
  security_policy_id                = akamai_appsec_security_policy.network_international.security_policy_id
  apply_account_protection_controls = false
  apply_api_constraints             = false
  apply_application_layer_controls  = true
  apply_botman_controls             = true
  apply_malware_controls            = false
  apply_network_layer_controls      = true
  apply_rate_controls               = true
  apply_reputation_controls         = true
  apply_slow_post_controls          = true
  apply_url_protection_controls     = false
}

resource "akamai_botman_bot_management_settings" "network_international" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy_protections.network_international.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : true,
      "removeBotManagementCookies" : true,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
