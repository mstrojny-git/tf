// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "production" {
  config_id                  = local.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.production.security_policy_id
  mode                       = "bloc"
  geo_network_lists          = ["155953_STROJNYCLIENTLISTIP"]
  ip_network_lists           = ["147980_STROJNY"]
  ukraine_geo_control_action = "none"
}

