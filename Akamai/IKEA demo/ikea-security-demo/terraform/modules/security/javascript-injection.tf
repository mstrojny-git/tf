resource "akamai_botman_javascript_injection" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.ikea-test.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}
