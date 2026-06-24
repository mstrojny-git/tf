// Penalty Box
resource "akamai_appsec_penalty_box" "ikea-test" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.ikea-test.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}