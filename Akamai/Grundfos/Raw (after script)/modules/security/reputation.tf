// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "waf_4711732" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711733" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711734" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711735" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711736" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711737" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711738" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_4711739" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495920" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495922" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495924" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495926" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat__shared_ips_only.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495939" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495941" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495959" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "waf_6495969" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.waf.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat__shared_ips_only.reputation_profile_id
  action                = "deny"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "main_policy_4711732" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711733" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711734" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711735" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711736" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711737" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711738" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_4711739" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495920" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495922" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495924" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495926" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495939" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495941" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495959" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "main_policy_6495969" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_reputation_protection.main_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat__shared_ips_only.reputation_profile_id
  action                = "alert"
}
