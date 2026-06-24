resource "akamai_botman_conditional_action" "javascript_fingerprint_anomaly_cond_action_54152" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "JavaScript Fingerprint Anomaly",
      "conditionalActionRules" : [
        {
          "action" : "deny",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "14061"
              ]
            }
          ],
          "notes" : "Digital Ocean",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "deny",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "fileExtensionCondition",
              "value" : [
                "ttf",
                "woff",
                "woff2"
              ]
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "8075"
              ]
            }
          ],
          "notes" : "Microsoft",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "request_anomaly_cond_action_54773" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Request anomaly",
      "conditionalActionRules" : [
        {
          "action" : "deny",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "16509",
                "60781"
              ]
            }
          ],
          "notes" : "delay base on ASN",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
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

