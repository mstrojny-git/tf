resource "akamai_botman_javascript_injection" "main" {
  config_id          = local.config_id
  security_policy_id = akamai_botman_bot_management_settings.main.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

