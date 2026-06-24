resource "akamai_botman_bot_analytics_cookie" "bot_analytics_cookie" {
  config_id = local.config_id
  bot_analytics_cookie = jsonencode(
    {
      "cookieName" : "bot-indicator",
      "enableBotSignal" : false,
      "excludePaths" : [],
      "hostnames" : []
    }
  )
}

resource "akamai_botman_client_side_security" "client_side_security" {
  config_id = local.config_id
  client_side_security = jsonencode(
    {
      "useAllSecureTraffic" : false,
      "useSameSiteCookies" : false,
      "useStrictCspCompatibility" : true
    }
  )
}

resource "akamai_botman_transactional_endpoint_protection" "transactional_endpoint_protection" {
  config_id = local.config_id
  transactional_endpoint_protection = jsonencode(
    {
      "inlineTelemetry" : {
        "aggressiveThreshold" : 90,
        "detectionSetType" : "BOT_SCORE",
        "safeguardAction" : "USE_STRICT_ACTION",
        "strictThreshold" : 50
      },
      "sdkTelemetry" : {
        "androidAggressiveThreshold" : 90,
        "androidStrictThreshold" : 50,
        "detectionSetType" : "BOT_SCORE_SDK",
        "iosAggressiveThreshold" : 90,
        "iosStrictThreshold" : 50,
        "safeguardAction" : "USE_STRICT_ACTION"
      },
      "standardTelemetry" : {
        "aggressiveThreshold" : 90,
        "detectionSetType" : "BOT_SCORE",
        "safeguardAction" : "USE_STRICT_ACTION",
        "strictThreshold" : 50
      }
    }
  )
}

