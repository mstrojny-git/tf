// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "fsattract" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.fsattract.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "igift_ingka" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.igift_ingka.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "cusmasps" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.cusmasps.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "skapa" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.skapa.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "asisonline" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.asisonline.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "ukapps" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.ukapps.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "oauthcoworkers" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.oauthcoworkers.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["139216_IKEACOWORKERBLOCKLIST", "1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "storeevents" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.storeevents.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "reside" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.reside.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "dataapp" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.dataapp.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "genericingkadeny" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.genericingkadeny.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "customerapp" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.customerapp.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "www_ingka" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.www_ingka.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "genericingkaalertonly" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.genericingkaalertonly.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "spareparts" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.spareparts.security_policy_id
  mode                       = "block"
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "atkomst" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.atkomst.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "iquote" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.iquote.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "lotta" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.lotta.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "publicera" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.publicera.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "dorfood" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.dorfood.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "flytta" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.flytta.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "buyback" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.buyback.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "datacatalog" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.datacatalog.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "prodloyalty" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.prodloyalty.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "upptacka" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.upptacka.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "delta" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.delta.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "nfwapp" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.nfwapp.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "engineeringbaseline" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.engineeringbaseline.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "uthingka" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.uthingka.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "service_offer" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.service_offer.security_policy_id
  mode                       = "block"
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "optimera" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.optimera.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["365_AKAMAITOREXITNODES", "1337_IKEAIPBLOCKING"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "salesassistant" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.salesassistant.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["1338_IKEAGEOBLOCKING"]
  ip_network_lists           = ["1337_IKEAIPBLOCKING", "365_AKAMAITOREXITNODES"]
  ukraine_geo_control_action = "none"
}

