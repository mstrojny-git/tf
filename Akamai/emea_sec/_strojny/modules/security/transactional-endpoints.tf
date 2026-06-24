resource "akamai_botman_transactional_endpoint" "main_9f1d01fe-0884-43c4-9639-9fc9d3747ad2" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.main.security_policy_id
  operation_id       = "9f1d01fe-0884-43c4-9639-9fc9d3747ad2"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 790817,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : false
        },
        "nativeSdk" : {
          "disabledAction" : "deny",
          "enabled" : false
        },
        "standard" : {
          "enableAjaxSupport" : true,
          "enabled" : true
        }
      },
      "traffic" : {
        "standardTelemetry" : {
          "aggressiveAction" : "deny",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "challenge_107240",
          "strictThreshold" : 50
        }
      }
    }
  )
}

