// Penalty Box
resource "akamai_appsec_penalty_box" "production" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.production.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}
// Penalty Box
resource "akamai_appsec_penalty_box" "testing" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.testing.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}
