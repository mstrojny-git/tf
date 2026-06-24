// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ikea-test_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ikea-test.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}