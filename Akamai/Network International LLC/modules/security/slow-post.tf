// Slow Post Protection
resource "akamai_appsec_slow_post" "ni_corporate_api_" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  slow_rate_action           = "abort"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

// Slow Post Protection
resource "akamai_appsec_slow_post" "ni_corporate_websites" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  slow_rate_action           = "abort"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

// Slow Post Protection
resource "akamai_appsec_slow_post" "neo_production" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.neo_production.security_policy_id
  slow_rate_action           = "abort"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

// Slow Post Protection
resource "akamai_appsec_slow_post" "onboarding_alert" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  slow_rate_action           = "alert"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

// Slow Post Protection
resource "akamai_appsec_slow_post" "network_international" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.network_international.security_policy_id
  slow_rate_action           = "abort"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

