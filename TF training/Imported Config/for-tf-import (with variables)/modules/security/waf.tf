resource "akamai_appsec_waf_mode" "tfdemo" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.tfdemo.security_policy_id
  mode               = "ASE_AUTO"
}

