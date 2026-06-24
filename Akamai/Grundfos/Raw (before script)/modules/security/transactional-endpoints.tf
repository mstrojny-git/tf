resource "akamai_botman_transactional_endpoint" "main_policy_c7c98196-abff-40bd-85d1-09cabf137bf3" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.main_policy.security_policy_id
  operation_id       = "c7c98196-abff-40bd-85d1-09cabf137bf3"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 301174,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : false
        },
        "nativeSdk" : {
          "disabledAction" : "none",
          "enabled" : false
        },
        "standard" : {
          "enabled" : true
        }
      },
      "traffic" : {
        "standardTelemetry" : {
          "aggressiveAction" : "deny",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

