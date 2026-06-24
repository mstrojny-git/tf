// Global Advanced
resource "akamai_appsec_advanced_settings_logging" "logging" {
  config_id = local.config_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "all"
      },
      "customHeaders" : {
        "type" : "all"
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
    {
      "action" : "REMOVE",
      "conditionOperator" : "AND",
      "excludeCondition" : [
        {
          "type" : "ipMatch",
          "positiveMatch" : true,
          "header" : "",
          "value" : [
            "193.3.1.0/24",
            "193.3.10.0/24",
            "193.3.11.0/24",
            "193.3.12.0/24",
            "193.3.3.0/24",
            "193.3.2.0/24",
            "193.3.5.0/24",
            "193.3.6.0/24",
            "193.3.8.0/24",
            "193.3.9.0/24",
            "83.172.91.91",
            "85.191.218.25",
            "46.4.85.220",
            "85.218.130.34",
            "185.233.254.229"
          ],
          "name" : "",
          "valueCase" : false,
          "valueWildcard" : false,
          "useHeaders" : false
        }
      ]
    }
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
  request_body_inspection_limit = "default"
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.waf.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE",
      "conditionOperator" : "AND",
      "excludeCondition" : [
        {
          "type" : "ipMatch",
          "positiveMatch" : true,
          "header" : "",
          "value" : [
            "193.3.1.0/24",
            "193.3.10.0/24",
            "193.3.11.0/24",
            "193.3.12.0/24",
            "193.3.3.0/24",
            "193.3.2.0/24",
            "193.3.5.0/24",
            "193.3.6.0/24",
            "193.3.8.0/24",
            "193.3.9.0/24",
            "83.172.91.91",
            "85.191.218.25",
            "46.4.85.220",
            "85.218.130.34",
            "185.233.254.229",
            "180.193.190.122",
            "122.53.113.72/29",
            "203.177.128.8/30"
          ],
          "name" : "",
          "valueCase" : false,
          "valueWildcard" : false,
          "useHeaders" : false
        }
      ]
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "waf" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.waf.security_policy_id
  enable_path_match  = true
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.main_policy.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE",
      "conditionOperator" : "AND",
      "excludeCondition" : [
        {
          "type" : "ipMatch",
          "positiveMatch" : true,
          "header" : "",
          "value" : [
            "193.3.1.0/24",
            "193.3.10.0/24",
            "193.3.11.0/24",
            "193.3.12.0/24",
            "193.3.3.0/24",
            "193.3.2.0/24",
            "193.3.5.0/24",
            "193.3.6.0/24",
            "193.3.8.0/24",
            "193.3.9.0/24",
            "83.172.91.91",
            "85.191.218.25",
            "46.4.85.220",
            "85.218.130.34",
            "185.233.254.229",
            "180.193.190.122",
            "203.177.128.8/30",
            "122.53.113.72/29"
          ],
          "name" : "",
          "valueCase" : false,
          "valueWildcard" : false,
          "useHeaders" : false
        }
      ]
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "main_policy" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.main_policy.security_policy_id
  enable_path_match  = true
}
