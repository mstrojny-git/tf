// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "tfdemo" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.tfdemo.security_policy_id
  mode               = "block"
  geo_controls {
    action            = "deny"
    geo_network_lists = ["286203_FORTFIMPORTGEOBLOCKLIS"]
  }
  ip_controls {
    action           = "deny"
    ip_network_lists = ["286205_FORTFIMPORTIPBLOCKLIST"]
  }
  exception_ip_network_lists = ["286207_FORTFIMPORTIPBLOCKLIST"]
  ukraine_geo_control_action = "none"
}

