// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "ni_corporate_api_" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  mode               = "block"
  geo_controls {
    action            = "deny"
    geo_network_lists = ["22604_GEOBLACKLIST"]
  }
  ip_controls {
    action           = "deny"
    ip_network_lists = ["22603_IPBLACKLIST"]
  }
  exception_ip_network_lists = ["117124_NIONPREM"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  mode               = "block"
  geo_controls {
    action            = "deny"
    geo_network_lists = ["22604_GEOBLACKLIST"]
  }
  ip_controls {
    action           = "deny"
    ip_network_lists = ["22603_IPBLACKLIST"]
  }
  exception_ip_network_lists = ["117124_NIONPREM"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "neo_production" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  mode               = "block"
  geo_controls {
    action            = "deny"
    geo_network_lists = ["22604_GEOBLACKLIST"]
  }
  ip_controls {
    action           = "deny"
    ip_network_lists = ["22603_IPBLACKLIST"]
  }
  exception_ip_network_lists = ["117124_NIONPREM"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "onboarding_alert" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  mode               = "block"
  geo_controls {
    action            = "deny"
    geo_network_lists = ["22604_GEOBLACKLIST"]
  }
  ip_controls {
    action           = "deny"
    ip_network_lists = ["22603_IPBLACKLIST"]
  }
  exception_ip_network_lists = ["117124_NIONPREM"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "network_international" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  mode               = "block"
  geo_controls {
    action            = "deny"
    geo_network_lists = ["22604_GEOBLACKLIST"]
  }
  ip_controls {
    action           = "deny"
    ip_network_lists = ["22603_IPBLACKLIST"]
  }
  exception_ip_network_lists = ["117124_NIONPREM"]
  ukraine_geo_control_action = "none"
}

