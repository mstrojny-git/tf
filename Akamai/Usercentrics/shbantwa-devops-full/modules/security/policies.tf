resource "akamai_appsec_security_policy" "main" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "Main"
  security_policy_prefix = "main"
}

