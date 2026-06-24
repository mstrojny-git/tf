resource "akamai_appsec_waf_mode" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.fsattract.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "fsattract_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.fsattract.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "fsattract_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "fsattract_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.fsattract.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "igift_ingka_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "igift_ingka_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "igift_ingka_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.igift_ingka.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.cusmasps.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "cusmasps_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.cusmasps.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "cusmasps_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "cusmasps_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.cusmasps.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "generictestalertonly_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "alert"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "generictestalertonly_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "generictestalertonly_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.generictestalertonly.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.skapa.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "skapa_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.skapa.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "skapa_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "skapa_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.skapa.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.asisonline.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "asisonline_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.asisonline.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "asisonline_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "asisonline_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.asisonline.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.ukapps.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "ukapps_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.ukapps.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "ukapps_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "ukapps_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.ukapps.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "oauthcoworkers_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "oauthcoworkers_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "oauthcoworkers_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.oauthcoworkers.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.storeevents.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "storeevents_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.storeevents.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "storeevents_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "storeevents_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.storeevents.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.reside.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "reside_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.reside.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "reside_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "reside_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.reside.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.dataapp.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "dataapp_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.dataapp.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "dataapp_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dataapp_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dataapp.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "genericingkadeny_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "genericingkadeny_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "genericingkadeny_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkadeny.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.customerapp.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "customerapp_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.customerapp.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "customerapp_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "customerapp_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.customerapp.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.www_ingka.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "www_ingka_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.www_ingka.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}
resource "akamai_appsec_custom_rule_action" "www_ingka_60082034" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.www_ingka.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.ingka_scambots_60082034.custom_rule_id
  custom_rule_action = "alert"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "www_ingka_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "www_ingka_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.www_ingka.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "genericingkaalertonly_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "genericingkaalertonly_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "genericingkaalertonly_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.genericingkaalertonly.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.spareparts.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "spareparts_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.spareparts.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "spareparts_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "spareparts_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.spareparts.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.atkomst.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "atkomst_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.atkomst.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "atkomst_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "atkomst_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.atkomst.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.iquote.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "iquote_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.iquote.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "iquote_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "iquote_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.iquote.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.lotta.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "lotta_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.lotta.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "lotta_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "lotta_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.lotta.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.publicera.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "publicera_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.publicera.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "publicera_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "publicera_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.publicera.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.dorfood.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "dorfood_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.dorfood.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "dorfood_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "dorfood_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.dorfood.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.flytta.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "flytta_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.flytta.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "flytta_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "flytta_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.flytta.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.buyback.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "buyback_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.buyback.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "buyback_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "buyback_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.buyback.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.datacatalog.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "datacatalog_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.datacatalog.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "datacatalog_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
  condition_exception = jsonencode(
    { "exception" : {
      "specificHeaderCookieParamXmlOrJsonNames" : [
        {
          "selector" : "REQUEST_BODY",
          "wildcard" : true
        }
      ]
    } }
  )
}

resource "akamai_appsec_attack_group" "datacatalog_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "datacatalog_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "datacatalog_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "datacatalog_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
  condition_exception = jsonencode(
    { "exception" : {
      "specificHeaderCookieParamXmlOrJsonNames" : [
        {
          "names" : [
            "value"
          ],
          "selector" : "JSON_PAIRS"
        },
        {
          "names" : [
            "new_value"
          ],
          "selector" : "ARGS"
        }
      ]
    } }
  )
}

resource "akamai_appsec_attack_group" "datacatalog_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "datacatalog_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "datacatalog_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "datacatalog_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.datacatalog.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "prodloyalty_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "prodloyalty_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "prodloyalty_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.prodloyalty.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.upptacka.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "upptacka_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.upptacka.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "upptacka_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "upptacka_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.upptacka.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.delta.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "delta_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.delta.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "delta_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "delta_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.delta.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.nfwapp.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "nfwapp_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.nfwapp.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "nfwapp_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "nfwapp_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.nfwapp.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "engineeringbaseline_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "engineeringbaseline_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "engineeringbaseline_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.engineeringbaseline.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.uthingka.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "uthingka_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.uthingka.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "uthingka_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "uthingka_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.uthingka.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.service_offer.security_policy_id
  mode               = "ASE_AUTO"
}


// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "service_offer_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "service_offer_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.service_offer.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

resource "akamai_appsec_waf_mode" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.optimera.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "optimera_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.optimera.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "optimera_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "alert"
}

resource "akamai_appsec_attack_group" "optimera_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.optimera.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "alert"
}

resource "akamai_appsec_waf_mode" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.salesassistant.security_policy_id
  mode               = "ASE_AUTO"
}


resource "akamai_appsec_custom_rule_action" "salesassistant_60082020" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.salesassistant.security_policy_id
  custom_rule_id     = akamai_appsec_custom_rule.block_nuclei_scanning_tool_60082020.custom_rule_id
  custom_rule_action = "deny"
}

// WAF Attack Group Actions
resource "akamai_appsec_attack_group" "salesassistant_POLICY" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "POLICY"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_WAT" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "WAT"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_PROTOCOL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "PROTOCOL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_SQL" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "SQL"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_XSS" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "XSS"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_CMD" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "CMD"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_LFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "LFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_RFI" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "RFI"
  attack_group_action = "deny"
}

resource "akamai_appsec_attack_group" "salesassistant_PLATFORM" {
  config_id           = akamai_appsec_configuration.config.config_id
  security_policy_id  = akamai_appsec_waf_protection.salesassistant.security_policy_id
  attack_group        = "PLATFORM"
  attack_group_action = "deny"
}

