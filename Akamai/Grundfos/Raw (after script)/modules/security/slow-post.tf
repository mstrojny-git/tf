// Slow Post Protection
resource "akamai_appsec_slow_post" "waf" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_slowpost_protection.waf.security_policy_id
  slow_rate_action           = "abort"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

// Slow Post Protection
resource "akamai_appsec_slow_post" "main_policy" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_slowpost_protection.main_policy.security_policy_id
  slow_rate_action           = "alert"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

