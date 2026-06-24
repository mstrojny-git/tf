// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "waf" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.waf.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["70147_GEOBLACKLIST"]
  ip_network_lists           = ["70145_IPBLACKLIST"]
  exception_ip_network_lists = ["70146_IPBLACKLISTEXCEPTIONS"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "main_policy" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.main_policy.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["70147_GEOBLACKLIST"]
  ip_network_lists           = ["70145_IPBLACKLIST"]
  exception_ip_network_lists = ["70146_IPBLACKLISTEXCEPTIONS"]
  ukraine_geo_control_action = "none"
}

