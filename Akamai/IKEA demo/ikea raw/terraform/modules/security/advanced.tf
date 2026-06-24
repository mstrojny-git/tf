// Global Advanced
resource "akamai_appsec_advanced_settings_logging" "logging" {
  config_id = akamai_appsec_configuration.config.config_id
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
  config_id            = akamai_appsec_configuration.config.config_id
  enable_app_layer     = true
  all_extensions       = false
  enable_rate_controls = false
  extensions           = ["cgi", "jsp", "EMPTY_STRING", "aspx", "py", "php", "asp"]
}

resource "akamai_appsec_advanced_settings_pragma_header" "pragma_header" {
  config_id = akamai_appsec_configuration.config.config_id
  pragma_header = jsonencode(
    {}
  )
}

resource "akamai_appsec_advanced_settings_evasive_path_match" "evasive_path_match" {
  config_id         = akamai_appsec_configuration.config.config_id
  enable_path_match = true
}

resource "akamai_appsec_advanced_settings_pii_learning" "pii_learning" {
  config_id           = akamai_appsec_configuration.config.config_id
  enable_pii_learning = true
}

resource "akamai_appsec_advanced_settings_attack_payload_logging" "attack_payload_logging" {
  config_id = akamai_appsec_configuration.config.config_id
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
  config_id                     = akamai_appsec_configuration.config.config_id
  request_body_inspection_limit = "default"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.fsattract.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "fsattract" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.fsattract.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.igift_ingka.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "igift_ingka" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.igift_ingka.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.cusmasps.security_policy_id
  enable_path_match  = true
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.generictestalertonly.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "generictestalertonly" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.generictestalertonly.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.skapa.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "skapa" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.skapa.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.asisonline.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "asisonline" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.asisonline.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.ukapps.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "ukapps" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.ukapps.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.oauthcoworkers.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "oauthcoworkers" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.oauthcoworkers.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.storeevents.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "storeevents" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.storeevents.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.reside.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "reside" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.reside.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.dataapp.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "dataapp" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.dataapp.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.genericingkadeny.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "genericingkadeny" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.genericingkadeny.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.customerapp.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "customerapp" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.customerapp.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.www_ingka.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "www_ingka" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.www_ingka.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.genericingkaalertonly.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "genericingkaalertonly" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.genericingkaalertonly.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.spareparts.security_policy_id
  enable_path_match  = true
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.atkomst.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "atkomst" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.atkomst.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.iquote.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "iquote" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.iquote.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.lotta.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "lotta" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.lotta.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.publicera.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "publicera" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.publicera.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.dorfood.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "dorfood" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.dorfood.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.flytta.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "flytta" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.flytta.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.buyback.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "buyback" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.buyback.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.datacatalog.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "datacatalog" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.datacatalog.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.prodloyalty.security_policy_id
  enable_path_match  = true
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.upptacka.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "upptacka" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.upptacka.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.delta.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "delta" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.delta.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.nfwapp.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "nfwapp" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.nfwapp.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.engineeringbaseline.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "engineeringbaseline" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.engineeringbaseline.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.uthingka.security_policy_id
  enable_path_match  = true
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.service_offer.security_policy_id
  enable_path_match  = true
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.optimera.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "optimera" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.optimera.security_policy_id
  request_body_inspection_limit = "32"
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.salesassistant.security_policy_id
  enable_path_match  = true
}

// RequestBody Overrides
resource "akamai_appsec_advanced_settings_request_body" "salesassistant" {
  config_id                     = akamai_appsec_configuration.config.config_id
  security_policy_id            = akamai_appsec_security_policy.salesassistant.security_policy_id
  request_body_inspection_limit = "32"
}
