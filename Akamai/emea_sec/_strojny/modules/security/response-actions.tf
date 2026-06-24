resource "akamai_botman_challenge_action" "challenge_30_seconds_challenge_107240" {
  config_id = local.config_id
  challenge_action = jsonencode(
    {
      "actionName" : "Challenge 30 seconds",
      "allowFullCpuUtilization" : false,
      "backupAction" : "monitor",
      "challengeIntervalInSeconds" : 300,
      "challengeType" : "AKAMAI_WEB_CRYPTO",
      "cryptoChallengeDurationInSeconds" : 30
    }
  )
}

resource "akamai_botman_challenge_action" "challenge_8_seconds_challenge_165624" {
  config_id = local.config_id
  challenge_action = jsonencode(
    {
      "actionName" : "Challenge 8 seconds",
      "allowFullCpuUtilization" : false,
      "backupAction" : "monitor",
      "challengeIntervalInSeconds" : 300,
      "challengeType" : "AKAMAI_WEB_CRYPTO",
      "cryptoChallengeDurationInSeconds" : 8
    }
  )
}

resource "akamai_botman_conditional_action" "challenge_for_mfa_countries_cond_action_165667" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Challenge for MFA countries.",
      "conditionalActionRules" : [
        {
          "action" : "challenge_165624",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "75978_GEOBMP"
              ]
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "challenge_107240"
    }
  )
}

resource "akamai_botman_challenge_injection_rules" "challenge_injection_rules" {
  config_id = local.config_id
  challenge_injection_rules = jsonencode(
    {
      "ajaxResubmit" : false,
      "injectJavaScript" : false
    }
  )
}

