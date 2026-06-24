resource "akamai_botman_content_protection_rule" "main_test_95faf808-cb94-458e-a41a-30e244f4c290" {
  config_id          = local.config_id
  security_policy_id = akamai_botman_bot_management_settings.main.security_policy_id
  content_protection_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : "dwdw",
          "nameCase" : false,
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestCookieCondition"
        }
      ],
      "contentProtectionRuleName" : "test",
      "enableAdvancedValidationForHTML" : false,
      "requestType" : "HTML",
      "responseStrategy" : {
        "aggressiveAction" : "deny",
        "aggressiveThreshold" : 69,
        "strictAction" : "monitor",
        "strictThreshold" : 39
      }
    }
  )
}

resource "akamai_botman_content_protection_rule" "main_dwd_1735954c-10fb-426e-aaea-e2e0776156ae" {
  config_id          = local.config_id
  security_policy_id = akamai_botman_bot_management_settings.main.security_policy_id
  content_protection_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : "dwdw",
          "nameCase" : false,
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestCookieCondition"
        }
      ],
      "contentProtectionRuleName" : "dwd",
      "enableAdvancedValidationForHTML" : false,
      "requestType" : "HTML",
      "responseStrategy" : {
        "aggressiveAction" : "deny",
        "aggressiveThreshold" : 69,
        "strictAction" : "monitor",
        "strictThreshold" : 39
      }
    }
  )
}

resource "akamai_botman_content_protection_rule_sequence" "main_sequence" {
  config_id          = local.config_id
  security_policy_id = akamai_botman_bot_management_settings.main.security_policy_id
  content_protection_rule_ids = [
    akamai_botman_content_protection_rule.main_test_95faf808-cb94-458e-a41a-30e244f4c290.content_protection_rule_id,
    akamai_botman_content_protection_rule.main_dwd_1735954c-10fb-426e-aaea-e2e0776156ae.content_protection_rule_id
  ]
}

