resource "akamai_appsec_security_policy" "fsattract" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "FsAttract"
  security_policy_prefix = "fsat"
}

resource "akamai_appsec_security_policy" "igift_ingka" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Igift ingka"
  security_policy_prefix = "igbo"
}

resource "akamai_appsec_security_policy" "cusmasps" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Cusmasps"
  security_policy_prefix = "cusm"
}

resource "akamai_appsec_security_policy" "generictestalertonly" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Generic-Test-AlertOnly"
  security_policy_prefix = "gtao"
}

resource "akamai_appsec_security_policy" "skapa" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Skapa"
  security_policy_prefix = "skap"
}

resource "akamai_appsec_security_policy" "asisonline" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Asisonline"
  security_policy_prefix = "ason"
}

resource "akamai_appsec_security_policy" "ukapps" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "UKApps"
  security_policy_prefix = "ukap"
}

resource "akamai_appsec_security_policy" "oauthcoworkers" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "oAuth-Coworkers"
  security_policy_prefix = "icow"
}

resource "akamai_appsec_security_policy" "storeevents" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Store-events"
  security_policy_prefix = "stev"
}

resource "akamai_appsec_security_policy" "reside" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Reside"
  security_policy_prefix = "resi"
}

resource "akamai_appsec_security_policy" "dataapp" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "DataApp"
  security_policy_prefix = "data"
}

resource "akamai_appsec_security_policy" "genericingkadeny" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Generic-Ingka-Deny"
  security_policy_prefix = "gind"
}

resource "akamai_appsec_security_policy" "customerapp" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "CustomerApp"
  security_policy_prefix = "cust"
}

resource "akamai_appsec_security_policy" "www_ingka" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "WWW Ingka"
  security_policy_prefix = "ingk"
}

resource "akamai_appsec_security_policy" "genericingkaalertonly" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Generic-Ingka-AlertOnly"
  security_policy_prefix = "gina"
}

resource "akamai_appsec_security_policy" "spareparts" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Spareparts"
  security_policy_prefix = "SP00"
}

resource "akamai_appsec_security_policy" "atkomst" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Atkomst"
  security_policy_prefix = "atko"
}

resource "akamai_appsec_security_policy" "iquote" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Iquote"
  security_policy_prefix = "iqot"
}

resource "akamai_appsec_security_policy" "lotta" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Lotta"
  security_policy_prefix = "lott"
}

resource "akamai_appsec_security_policy" "publicera" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Publicera"
  security_policy_prefix = "publ"
}

resource "akamai_appsec_security_policy" "dorfood" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "DorFood"
  security_policy_prefix = "food"
}

resource "akamai_appsec_security_policy" "flytta" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Flytta"
  security_policy_prefix = "fly"
}

resource "akamai_appsec_security_policy" "buyback" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Buyback"
  security_policy_prefix = "buba"
}

resource "akamai_appsec_security_policy" "datacatalog" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Datacatalog"
  security_policy_prefix = "daca"
}

resource "akamai_appsec_security_policy" "prodloyalty" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Prod-Loyalty"
  security_policy_prefix = "prlo"
}

resource "akamai_appsec_security_policy" "upptacka" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Upptacka"
  security_policy_prefix = "uppt"
}

resource "akamai_appsec_security_policy" "delta" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = " Delta"
  security_policy_prefix = "delt"
}

resource "akamai_appsec_security_policy" "nfwapp" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "NFWApp"
  security_policy_prefix = "nfwa"
}

resource "akamai_appsec_security_policy" "engineeringbaseline" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Engineering-Baseline"
  security_policy_prefix = "base"
}

resource "akamai_appsec_security_policy" "uthingka" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Uth-Ingka"
  security_policy_prefix = "utin"
}

resource "akamai_appsec_security_policy" "service_offer" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Service Offer"
  security_policy_prefix = "net1"
}

resource "akamai_appsec_security_policy" "optimera" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Optimera"
  security_policy_prefix = "opti"
}

resource "akamai_appsec_security_policy" "salesassistant" {
  config_id              = akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Sales-Assistant"
  security_policy_prefix = "saas"
}

