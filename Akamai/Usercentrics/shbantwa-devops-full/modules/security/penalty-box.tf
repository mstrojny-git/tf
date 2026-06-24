// Penalty Box
resource "akamai_appsec_penalty_box" "main" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.main.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = var.penalty_box
}
