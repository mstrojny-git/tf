// Penalty Box
resource "akamai_appsec_penalty_box" "fsattract" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.fsattract.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "igift_ingka" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.igift_ingka.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "cusmasps" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.cusmasps.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "generictestalertonly" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.generictestalertonly.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "skapa" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.skapa.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "asisonline" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.asisonline.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "ukapps" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.ukapps.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "oauthcoworkers" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.oauthcoworkers.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "storeevents" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.storeevents.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "reside" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.reside.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "dataapp" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.dataapp.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "genericingkadeny" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.genericingkadeny.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "customerapp" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.customerapp.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "www_ingka" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.www_ingka.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "genericingkaalertonly" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.genericingkaalertonly.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "spareparts" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.spareparts.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "atkomst" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.atkomst.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "iquote" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.iquote.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "lotta" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.lotta.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "publicera" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.publicera.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "dorfood" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.dorfood.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "flytta" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.flytta.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "buyback" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.buyback.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "datacatalog" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.datacatalog.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "prodloyalty" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.prodloyalty.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "upptacka" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.upptacka.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "delta" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.delta.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "nfwapp" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.nfwapp.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "engineeringbaseline" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.engineeringbaseline.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "uthingka" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.uthingka.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "service_offer" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.service_offer.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "optimera" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.optimera.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}

// Penalty Box
resource "akamai_appsec_penalty_box" "salesassistant" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.salesassistant.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}

