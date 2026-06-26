resource "akamai_appsec_security_policy" "tfdemo" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "tf-demo"
  security_policy_prefix = "TF01"
}

