// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655522" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655523" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655524" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655525" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655526" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655527" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655528" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__9398685" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2655529" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__2710904" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_10.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__9398714" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scraper_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__9398716" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools__high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_api__9398687" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos__attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655522" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655523" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655524" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655525" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655526" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655527" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655528" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_9398685" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2655529" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_2710904" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_10.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_9398714" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scraper_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_9398716" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools__high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "ni_corporate_websites_9398687" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos__attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "neo_production_2655522" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655523" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655524" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655525" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655526" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655527" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655528" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_9398685" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2655529" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_2710904" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_10.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_9398714" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scraper_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_9398716" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools__high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "neo_production_9398687" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.neo_production.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos__attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655522" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655523" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655524" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655525" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655526" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655527" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655528" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2655529" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "onboarding_alert_2710904" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_10.reputation_profile_id
  action                = "deny"
}
// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "network_international_2655522" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655523" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655524" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655525" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655526" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655527" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655528" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_9398685" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2655529" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "network_international_2710904" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_10.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "network_international_9398714" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scraper_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_9398716" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools__high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "network_international_9398687" {
  config_id             = local.config_id
  security_policy_id    = akamai_appsec_security_policy.network_international.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos__attacker_high_threat__shared_ip_only.reputation_profile_id
  action                = "alert"
}
