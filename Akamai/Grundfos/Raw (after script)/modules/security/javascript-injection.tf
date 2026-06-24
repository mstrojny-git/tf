resource "akamai_botman_javascript_injection" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_botman_bot_management_settings.waf.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_botman_bot_management_settings.main_policy.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

