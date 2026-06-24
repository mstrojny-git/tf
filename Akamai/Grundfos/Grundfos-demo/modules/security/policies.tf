resource "akamai_appsec_security_policy" "production" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "Production"
  security_policy_prefix = "prod"
}

