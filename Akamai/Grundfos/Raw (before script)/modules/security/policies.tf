resource "akamai_appsec_security_policy" "waf" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "WAF"
  security_policy_prefix = "gfos"
}

resource "akamai_appsec_security_policy" "main_policy" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "Main Policy"
  security_policy_prefix = "gfmp"
}

