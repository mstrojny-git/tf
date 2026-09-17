// Penalty Box
resource "akamai_appsec_penalty_box" "ni_corporate_api_" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}
// Penalty Box
resource "akamai_appsec_penalty_box" "ni_corporate_websites" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}
// Penalty Box Conditions
resource "akamai_appsec_penalty_box_conditions" "ni_corporate_websites" {
  config_id          = local.config_id
  security_policy_id = akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
  penalty_box_conditions = jsonencode(
    {
      "conditionOperator" : "AND",
      "conditions" : [
        {
          "type" : "clientListMatch",
          "positiveMatch" : true,
          "clientLists" : [
            "263795_WAFSECURITYFILEPENALTYB"
          ]
        }
      ]
    }
  )
}

// Penalty Box
resource "akamai_appsec_penalty_box" "neo_production" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.neo_production.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}
// Penalty Box
resource "akamai_appsec_penalty_box" "onboarding_alert" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.onboarding_alert.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}
// Penalty Box
resource "akamai_appsec_penalty_box" "network_international" {
  config_id              = local.config_id
  security_policy_id     = akamai_appsec_security_policy.network_international.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "deny"
}
