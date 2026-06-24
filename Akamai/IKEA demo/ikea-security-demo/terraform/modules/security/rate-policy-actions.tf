// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "ikea-test_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ikea-test.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ikea-test_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ikea-test.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ikea-test_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ikea-test.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}