// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753176" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753196" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753198" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753192" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753174" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753178" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753190" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753180" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753172" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753182" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753170" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753184" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753186" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753188" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753194" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "tfdemo_13753200" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.tfdemo.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat_shared_ips.reputation_profile_id
  action                = "alert"
}
