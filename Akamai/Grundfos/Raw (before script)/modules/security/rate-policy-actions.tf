// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "waf_page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.waf.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "waf_origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.waf.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "waf_post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.waf.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "main_policy_page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.main_policy.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "main_policy_origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.main_policy.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "main_policy_post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_rate_protection.main_policy.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

