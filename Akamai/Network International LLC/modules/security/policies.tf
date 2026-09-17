resource "akamai_appsec_security_policy" "ni_corporate_api_" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "NI_corporate_API_"
  security_policy_prefix = "NICA"
}

resource "akamai_appsec_security_policy" "ni_corporate_websites" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "NI Corporate Websites"
  security_policy_prefix = "joeg"
}

resource "akamai_appsec_security_policy" "neo_production" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "NEO Production"
  security_policy_prefix = "2087"
}

resource "akamai_appsec_security_policy" "onboarding_alert" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "Onboarding Alert"
  security_policy_prefix = "ONAL"
}

resource "akamai_appsec_security_policy" "network_international" {
  config_id              = local.config_id
  default_settings       = true
  security_policy_name   = "Network International"
  security_policy_prefix = "NIAE"
}

