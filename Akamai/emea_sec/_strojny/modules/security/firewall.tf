// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "main" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.main.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["101185_MSTROJNYGEOBLOCKLIST"]
  ip_network_lists           = ["101184_IPBLOCKLISTMSTROJNY"]
  exception_ip_network_lists = ["101186_MSTROJNYGEOBLOCKLIST"]
  ukraine_geo_control_action = "none"
}

