// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "main_5075738" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_5075739" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "deny_custom_112320"
}
resource "akamai_appsec_reputation_profile_action" "main_5075741" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "deny_custom_112320"
}
resource "akamai_appsec_reputation_profile_action" "main_5075744" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_5075746" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_5075748" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_5075750" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "deny_custom_112320"
}
resource "akamai_appsec_reputation_profile_action" "main_5075760" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "deny_custom_112320"
}
