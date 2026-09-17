// Global Advanced
resource "akamai_appsec_advanced_settings_logging" "logging" {
  config_id = local.config_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "none"
      },
      "customHeaders" : {
        "type" : "none"
      },
      "standardHeaders" : {
        "type" : "all"
      }
    }
  )
}

resource "akamai_appsec_advanced_settings_prefetch" "prefetch" {
  config_id            = local.config_id
  enable_app_layer     = true
  all_extensions       = false
  enable_rate_controls = false
  extensions           = ["cgi", "jsp", "EMPTY_STRING", "aspx", "py", "php", "asp"]
}

resource "akamai_appsec_advanced_settings_pragma_header" "pragma_header" {
  config_id = local.config_id
  pragma_header = jsonencode(
    {}
  )
}

resource "akamai_appsec_advanced_settings_evasive_path_match" "evasive_path_match" {
  config_id         = local.config_id
  enable_path_match = true
}

resource "akamai_appsec_advanced_settings_pii_learning" "pii_learning" {
  config_id           = local.config_id
  enable_pii_learning = false
}

resource "akamai_appsec_advanced_settings_attack_payload_logging" "attack_payload_logging" {
  config_id = local.config_id
  attack_payload_logging = jsonencode(
    {
      "enabled" : true,
      "requestBody" : {
        "type" : "ATTACK_PAYLOAD"
      },
      "responseBody" : {
        "type" : "ATTACK_PAYLOAD"
      }
    }
  )
}

resource "akamai_appsec_advanced_settings_request_body" "config_settings" {
  config_id                     = local.config_id
  request_body_inspection_limit = "32"
}

// Logging Overides
resource "akamai_appsec_advanced_settings_logging" "ni_corporate_api_" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "all"
      },
      "customHeaders" : {
        "type" : "all"
      },
      "override" : true,
      "standardHeaders" : {
        "type" : "all"
      }
    }
  )
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "ni_corporate_api_" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE"
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "ni_corporate_api_" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  enable_path_match  = true
}

// Logging Overides
resource "akamai_appsec_advanced_settings_logging" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "all"
      },
      "customHeaders" : {
        "type" : "all"
      },
      "override" : true,
      "standardHeaders" : {
        "type" : "all"
      }
    }
  )
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE"
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  enable_path_match  = true
}

// Logging Overides
resource "akamai_appsec_advanced_settings_logging" "neo_production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "all"
      },
      "customHeaders" : {
        "type" : "all"
      },
      "override" : true,
      "standardHeaders" : {
        "type" : "all"
      }
    }
  )
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "neo_production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE"
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "neo_production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  enable_path_match  = true
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "onboarding_alert" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "NONE",
      "conditionOperator" : "AND"
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "onboarding_alert" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  enable_path_match  = true
}

// Logging Overides
resource "akamai_appsec_advanced_settings_logging" "network_international" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "all"
      },
      "customHeaders" : {
        "type" : "all"
      },
      "override" : true,
      "standardHeaders" : {
        "type" : "all"
      }
    }
  )
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "network_international" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE"
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "network_international" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  enable_path_match  = true
}
