// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "main_9116178" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116182" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116187" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116189" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116191" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116193" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116195" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_9116197" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
