// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "production" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.production.security_policy_id
  mode                       = "block"
  /*asn_network_lists          = ["158011_BLOCKEDASN"]
  geo_network_lists          = ["76249_GEOBLOCKLIST"]
  ip_network_lists           = ["76247_IPBLOCKLIST", "365_AKAMAITOREXITNODES"]
  exception_ip_network_lists = ["76248_IPBLOCKLISTEXCEPTIONS", "161157_SUSPICIOUSMONITOR", "162338_SITE24X7"]*/
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "testing" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_security_policy.testing.security_policy_id
  mode                       = "block"
    /*asn_network_lists          = ["158011_BLOCKEDASN"]
  geo_network_lists          = ["76249_GEOBLOCKLIST"]
  ip_network_lists           = ["76247_IPBLOCKLIST", "365_AKAMAITOREXITNODES"]
  exception_ip_network_lists = ["76248_IPBLOCKLISTEXCEPTIONS", "161157_SUSPICIOUSMONITOR", "162338_SITE24X7"]
  exception_ip_network_lists = ["77261_PERFORMANCEWHITELIST", "77262_STAGINGWHITELIST", "80265_AUTOMATIONIPLIST"]*/
  ukraine_geo_control_action = "none"
}

