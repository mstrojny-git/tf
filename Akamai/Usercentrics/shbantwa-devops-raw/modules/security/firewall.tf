// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "main" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.main.security_policy_id
  mode                       = "block"
  ip_network_lists           = ["57463_IPBLACKLIST"]
  ukraine_geo_control_action = "none"
}

