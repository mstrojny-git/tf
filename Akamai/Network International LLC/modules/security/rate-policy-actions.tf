// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "ni_corporate_api__page_view_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__origin_error_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__post_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__ni_corporate__page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__page_view_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__ni_corporate__origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__origin_error.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__ni_corporate__post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__post_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__pos_device_post_requests_header_to_apinetworkglobal" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.pos_device_post_requests_header_to_apinetworkglobal.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__pos_device_post_requests__clien_list_to_apinetworkglobal" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.pos_device_post_requests__clien_list_to_apinetworkglobal.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_api__post_requests_to_apinetworkglobal" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests_to_apinetworkglobal.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "ni_corporate_websites_page_view_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_websites_origin_error_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_websites_post_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_websites_ni_corporate__page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__page_view_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_websites_ni_corporate__origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__origin_error.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "ni_corporate_websites_ni_corporate__post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__post_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "neo_production_page_view_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "none"
}

resource "akamai_appsec_rate_policy_action" "neo_production_origin_error_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "none"
}

resource "akamai_appsec_rate_policy_action" "neo_production_post_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.neo_production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "none"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "onboarding_alert_page_view_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "onboarding_alert_origin_error_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "onboarding_alert_post_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "onboarding_alert_ni_corporate__page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__page_view_requests.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "onboarding_alert_ni_corporate__origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__origin_error.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "onboarding_alert_ni_corporate__post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ni_corporate__post_requests.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "network_international_page_view_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "network_international_origin_error_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "network_international_post_requests_v1" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "network_international_applynetworkaeapiv1otpsend_limiting_rc" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.network_international.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.applynetworkaeapiv1otpsend_limiting_rc.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

