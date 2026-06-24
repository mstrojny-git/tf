// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "production_9476939" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476941" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476943" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476945" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476947" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476949" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476951" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "production_9476953" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
