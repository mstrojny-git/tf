resource "akamai_botman_client_side_security" "client_side_security" {
  config_id = local.config_id
  client_side_security = jsonencode(
    {
      "useAllSecureTraffic" : false,
      "useSameSiteCookies" : false,
      "useStrictCspCompatibility" : false
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
      "standardTelemetry" : {
        "aggressiveThreshold" : 90,
        "detectionSetType" : "BOT_SCORE",
        "safeguardAction" : "USE_STRICT_ACTION",
        "strictThreshold" : 50
      }
    }
  )
}

