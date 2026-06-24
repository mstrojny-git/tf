resource "akamai_botman_custom_client" "ufxhomepage__fastly_cdn_apis_763a14d0-8f83-40b3-8f7c-08a7219a7d92" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_client = jsonencode(
    {
      "customClientName" : "UFX/Homepage - Fastly CDN APIs",
      "customClientType" : "NATIVE_APP",
      "description" : "Disable BM cookies for Fastly API to API calls",
      "requestConditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "HRI/SMC-585516"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "23.235.32.0/20",
            "43.249.72.0/22",
            "103.244.50.0/24",
            "103.245.222.0/23",
            "103.245.224.0/24",
            "104.156.80.0/20",
            "140.248.64.0/18",
            "140.248.128.0/17",
            "146.75.0.0/17",
            "151.101.0.0/16",
            "157.52.64.0/18",
            "167.82.0.0/17",
            "167.82.128.0/20",
            "167.82.160.0/20",
            "167.82.224.0/20",
            "172.111.64.0/18",
            "185.31.16.0/22",
            "199.27.72.0/21",
            "199.232.0.0/16",
            "2a04:4e40::/32",
            "2a04:4e42::/32"
          ]
        },
        {
          "host" : [
            "icow.accounts.ingka.com"
          ],
          "positiveMatch" : true,
          "type" : "hostCondition"
        },
        {
          "positiveMatch" : true,
          "type" : "urlPatternCondition",
          "value" : [
            "/oauth/token"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_client_sequence" "sequence" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_client_ids = [
    akamai_botman_custom_client.ufxhomepage__fastly_cdn_apis_763a14d0-8f83-40b3-8f7c-08a7219a7d92.custom_client_id
  ]
}
