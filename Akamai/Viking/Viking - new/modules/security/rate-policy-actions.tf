// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "production_page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "production_origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "production_post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "production_login_page_post" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.login_page_post.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "production_post_requests__new" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests__new.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "production_loyaltyscheme" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.loyaltyscheme.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "testing_page_view_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.page_view_requests.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "testing_origin_error" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.origin_error.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "testing_post_requests" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.post_requests.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

