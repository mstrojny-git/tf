resource "akamai_botman_client_side_security" "client_side_security" {
  config_id = local.config_id
  client_side_security = jsonencode(
    {
     "useStrictCspCompatibility" : false
    }
  )
}

