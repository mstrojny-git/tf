resource "akamai_appsec_waf_mode" "ni_corporate_api_" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "ni_corporate_api__60066532" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_on_tls_hash_and_ho_60066532.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "ni_corporate_api__60066533" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_only_on_tls_60066533.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "ni_corporate_api__60373586" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.blockiocallconfig_60373586.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_waf_mode" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "ni_corporate_websites_60066532" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_on_tls_hash_and_ho_60066532.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "ni_corporate_websites_60066533" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_only_on_tls_60066533.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "ni_corporate_websites_60120471" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_traffic_on_orabankganetworkaeconsoleloginloginformjsp_60120471.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "ni_corporate_websites_60373586" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.blockiocallconfig_60373586.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "ni_corporate_websites_60299692" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.filepath_block_vcardnetworkae_60299692.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_waf_mode" "neo_production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "neo_production_60066532" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_on_tls_hash_and_ho_60066532.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "neo_production_60066533" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_only_on_tls_60066533.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "neo_production_60373586" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.blockiocallconfig_60373586.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_waf_mode" "onboarding_alert" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "onboarding_alert_60066532" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_on_tls_hash_and_ho_60066532.custom_rule_id
  custom_rule_action = "alert"
}
resource "akamai_appsec_custom_rule_action" "onboarding_alert_60066533" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_only_on_tls_60066533.custom_rule_id
  custom_rule_action = "alert"
}
resource "akamai_appsec_custom_rule_action" "onboarding_alert_60373586" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.blockiocallconfig_60373586.custom_rule_id
  custom_rule_action = "alert"
}
resource "akamai_appsec_waf_mode" "network_international" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "network_international_60210868" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.bad_get_request_to_wwwnetworkae_with_contentlength_0_60210868.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "network_international_60210870" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.bad_request_to_wwwnetworkae_with_header_fcookief_60210870.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "network_international_60210869" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.bad_request_to_wwwnetworkae_with_header_frefererf_60210869.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "network_international_60066532" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_on_tls_hash_and_ho_60066532.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "network_international_60066533" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_based_only_on_tls_60066533.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "network_international_60373586" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.blockiocallconfig_60373586.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "network_international_60397408" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.visibility_rule_for_applynetworkaeapiv1otpsend_60397408.custom_rule_id
  custom_rule_action = "alert"
}
