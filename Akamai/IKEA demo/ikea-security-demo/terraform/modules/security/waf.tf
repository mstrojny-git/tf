resource "akamai_appsec_waf_mode" "ikea-test" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.ikea-test.security_policy_id
  mode               = "ASE_AUTO"
}

// Custom Rule
resource "akamai_appsec_custom_rule_action" "ikea-test_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.ikea-test.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}


// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "ikea-test_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "ikea-test_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ikea-test_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ikea-test.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}