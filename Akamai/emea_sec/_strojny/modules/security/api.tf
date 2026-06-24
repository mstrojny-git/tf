// API Request Constraints
resource "akamai_appsec_api_request_constraints" "main_738944" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.main.security_policy_id
  api_endpoint_id    = 738944 // Note: We don't have an API Endpoint Definitions in our provider yet so can't reference this ID to another resource
  action             = "none"
}

resource "akamai_appsec_api_request_constraints" "main_790817" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.main.security_policy_id
  api_endpoint_id    = 790817 // Note: We don't have an API Endpoint Definitions in our provider yet so can't reference this ID to another resource
  action             = "alert"
}
