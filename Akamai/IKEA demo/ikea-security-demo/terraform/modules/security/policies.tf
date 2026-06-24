resource "akamai_appsec_security_policy" "ikea-test" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "ikea-test"
  security_policy_prefix = "ikte"
}