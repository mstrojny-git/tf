// Penalty Box
resource "akamai_appsec_penalty_box" "waf" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.waf.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}
// Penalty Box
resource "akamai_appsec_penalty_box" "main_policy" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.main_policy.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}
