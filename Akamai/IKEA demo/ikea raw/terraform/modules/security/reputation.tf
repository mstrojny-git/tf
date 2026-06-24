// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "fsattract_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "fsattract_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.fsattract.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "igift_ingka_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.igift_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "cusmasps_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.cusmasps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "generictestalertonly_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.generictestalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "skapa_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "skapa_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.skapa.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "asisonline_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "asisonline_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.asisonline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "ukapps_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ukapps_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.ukapps.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "oauthcoworkers_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.oauthcoworkers.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "storeevents_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "storeevents_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.storeevents.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "reside_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "reside_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.reside.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "dataapp_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dataapp_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dataapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkadeny_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkadeny.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "customerapp_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "customerapp_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.customerapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "www_ingka_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.www_ingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "genericingkaalertonly_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.genericingkaalertonly.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "spareparts_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "spareparts_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.spareparts.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "atkomst_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "atkomst_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.atkomst.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "iquote_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "iquote_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.iquote.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "lotta_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "lotta_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.lotta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "publicera_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "publicera_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.publicera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "dorfood_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "dorfood_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.dorfood.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "flytta_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "flytta_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.flytta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "buyback_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "buyback_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.buyback.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "datacatalog_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.datacatalog.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "prodloyalty_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.prodloyalty.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "upptacka_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "upptacka_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.upptacka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "delta_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "delta_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.delta.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "nfwapp_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.nfwapp.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "engineeringbaseline_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.engineeringbaseline.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "uthingka_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "uthingka_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.uthingka.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "service_offer_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "service_offer_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.service_offer.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "optimera_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "optimera_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.optimera.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643012" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643014" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643016" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643018" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643020" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643022" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643024" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_2643026" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069753" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069755" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069757" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069759" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069761" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069763" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069765" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threatshared_ip.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "salesassistant_6069767" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.salesassistant.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threatshared_ip.reputation_profile_id
  action                = "alert"
}
