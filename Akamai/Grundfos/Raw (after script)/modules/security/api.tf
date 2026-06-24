// API Request Constraints
resource "akamai_appsec_api_request_constraints" "waf_536219" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.waf.security_policy_id
  api_endpoint_id    = 536219 // Note: We don't have an API Endpoint Definitions in our provider yet so can't reference this ID to another resource
  action             = "none"
}

resource "akamai_appsec_api_request_constraints" "waf_537111" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.waf.security_policy_id
  api_endpoint_id    = 537111 // Note: We don't have an API Endpoint Definitions in our provider yet so can't reference this ID to another resource
  action             = "none"
}
