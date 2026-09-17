resource "akamai_botman_custom_bot_category" "allow_bots_based_on_ips_ffabb2b2-1fcf-4e7f-94e8-0ae2ae39dc88" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Allow Bots based on IPs"
    }
  )
}

resource "akamai_botman_custom_bot_category" "allowed_bot__ni_corporate_api__20cd062d-74e4-4777-b2fb-c8f2a542ded1" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Allowed Bot - NI_corporate_API_"
    }
  )
}

resource "akamai_botman_custom_bot_category" "allowed_bots_0ddccc41-b5c2-4ba5-9139-2ec67bd8ea0b" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Allowed Bots"
    }
  )
}

resource "akamai_botman_custom_bot_category" "allowed_useragents_c4740bd4-f312-4ae8-b7fc-563825194666" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Allowed User-Agents",
      "description" : "Allowed user agents",
      "notes" : "F-CS-8110905"
    }
  )
}

resource "akamai_botman_custom_bot_category" "geo_nl_in_monitor_for_mposnetworkae_bdb65941-4443-4258-9235-09ca0c455e9f" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "GEO NL in Monitor for mpos.network.ae"
    }
  )
}

resource "akamai_botman_custom_bot_category" "partner_bots_39095d0b-0f23-4df0-8235-bef13db57d4c" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Partner bots",
      "description" : "F-CS-5810743"
    }
  )
}

resource "akamai_botman_custom_bot_category_sequence" "custom_bot_category_sequence" {
  config_id    = local.config_id
  category_ids = [akamai_botman_custom_bot_category.allowed_bots_0ddccc41-b5c2-4ba5-9139-2ec67bd8ea0b.category_id, akamai_botman_custom_bot_category.geo_nl_in_monitor_for_mposnetworkae_bdb65941-4443-4258-9235-09ca0c455e9f.category_id, akamai_botman_custom_bot_category.partner_bots_39095d0b-0f23-4df0-8235-bef13db57d4c.category_id, akamai_botman_custom_bot_category.allowed_bot__ni_corporate_api__20cd062d-74e4-4777-b2fb-c8f2a542ded1.category_id, akamai_botman_custom_bot_category.allowed_useragents_c4740bd4-f312-4ae8-b7fc-563825194666.category_id, akamai_botman_custom_bot_category.allow_bots_based_on_ips_ffabb2b2-1fcf-4e7f-94e8-0ae2ae39dc88.category_id]
}

resource "akamai_botman_custom_defined_bot" "allow_based_on_ips_9f5d295d-0732-483e-9150-e62d711392a1" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Allow based on IPs",
      "categoryId" : "${akamai_botman_custom_bot_category.allow_bots_based_on_ips_ffabb2b2-1fcf-4e7f-94e8-0ae2ae39dc88.category_id}",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "31.218.68.17",
            "20.38.138.1",
            "20.119.8.34",
            "20.74.143.49",
            "20.74.137.100"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "allow_apinetworkglobal_and_apidevnetworkglobal_1da659e3-657c-4cce-9c94-cee3f93dfea6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Allow: api.network.global and api-dev.network.global",
      "categoryId" : "${akamai_botman_custom_bot_category.allowed_bot__ni_corporate_api__20cd062d-74e4-4777-b2fb-c8f2a542ded1.category_id}",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "125.19.104.6",
            "118.185.205.49",
            "182.156.1.34",
            "180.151.194.162"
          ]
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "api-dev.network.global",
            "api.network.global"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "F-CS-8445240",
      "notes" : "Allowed Addresses:\n125.19.104.6\n180.151.194.162\n182.156.1.34\n118.185.205.49"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "allowed_useragents_bab12f57-7c3a-49da-be07-b001ff7bc4e4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Allowed User-Agents",
      "categoryId" : "${akamai_botman_custom_bot_category.allowed_useragents_c4740bd4-f312-4ae8-b7fc-563825194666.category_id}",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "RestSharp*",
            "PostmanRuntime*",
            "Mozilla/5.0 (platform; rv:geckoversion) Gecko/geckotrail Firefox/firefoxversion",
            "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; .NET CLR 1.0.3705;)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "api-uat.network.global"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "nl_including_uea_304ca5ec-f540-4f96-ac19-edf3e345a7bb" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "NL Including UEA",
      "categoryId" : "${akamai_botman_custom_bot_category.geo_nl_in_monitor_for_mposnetworkae_bdb65941-4443-4258-9235-09ca0c455e9f.category_id}",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "118018_ALLOWEDCOUNTRIESWITHHTTP"
          ]
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "mpos.network.ae"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "onprem_traffic_1acab501-7110-482f-8dfe-4f50c3ab5d63" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "OnPrem traffic",
      "categoryId" : "${akamai_botman_custom_bot_category.allowed_bots_0ddccc41-b5c2-4ba5-9139-2ec67bd8ea0b.category_id}",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "117124_NIONPREM"
          ]
        }
      ],
      "description" : "Traffic originating from the customer subnets"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "partner_ips_for_apinetworkglobal_a7120af2-8d5c-4a16-85a6-066100d911c5" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Partner IPs for api.network.global",
      "categoryId" : "${akamai_botman_custom_bot_category.allowed_bot__ni_corporate_api__20cd062d-74e4-4777-b2fb-c8f2a542ded1.category_id}",
      "conditions" : [
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "api.network.global"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "PostmanRuntime*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "201901_PARTNERIPSFORAPINETWORK"
          ]
        }
      ],
      "description" : "F-CS-8855720: Matches on Network List and the Hostname"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "partners_ips_allowed_for_apitestnetworkae_apisandboxnetworkglobal_553b66d2-79cd-4c87-a0dd-15f302b29343" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Partner's IPs allowed for \"apitest.network.ae\", \"api-sandbox.network.global\"",
      "categoryId" : "${akamai_botman_custom_bot_category.partner_bots_39095d0b-0f23-4df0-8235-bef13db57d4c.category_id}",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "20.74.252.26",
            "20.203.64.192",
            "20.233.161.24",
            "20.203.68.24",
            "20.203.81.113"
          ]
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "apitest.network.ae",
            "api-sandbox.network.global"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "F-CS-7006772, F-CS-7274327",
      "notes" : "Added 20.74.252.26, 20.203.64.192, 20.233.161.24 and 20.203.68.24.\nF-CS-7274327 - Added 20.203.81.113 for \"api-sandbox.network.global\""
    }
  )
}

resource "akamai_botman_custom_defined_bot" "partners_ips_allowed_for_investorsnetworkinternationalae_a78797a7-aba5-403b-8e1a-419ac754c550" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Partner's IPs allowed for \"investors.networkinternational.ae\".",
      "categoryId" : "${akamai_botman_custom_bot_category.partner_bots_39095d0b-0f23-4df0-8235-bef13db57d4c.category_id}",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "2001:1af8:4300:b152::0/64",
            "2001:1af8:8100:b001::0/64",
            "178.162.179.211",
            "95.211.70.211",
            "178.162.179.213",
            "95.211.70.213",
            "95.211.70.203",
            "195.201.9.51",
            "104.194.9.119"
          ]
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "investors.networkinternational.ae"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "partners_ips_allowed_for_onboardingnetworkae_merchantportaluatnetworkae_customernetworkae_onboardinguatnetworkae_nilpmnetworkae_nilpmuatnetworkae_mposnetworkae_mposbonetworkae_networkae_networkglobal_5972c227-16e4-4400-b667-fa970d074871" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Partner's IPs allowed for \"onboarding.network.ae\", \"merchantportal-uat.network.ae\", \"customer.network.ae\", \"onboarding-uat.network.ae\", \"nilpm.network.ae\", \"nilpmuat.network.ae\", \"mpos.network.ae\", \"mposbo.network.ae\", \"network.ae\", \"network.global\".",
      "categoryId" : "${akamai_botman_custom_bot_category.partner_bots_39095d0b-0f23-4df0-8235-bef13db57d4c.category_id}",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "193.151.176.0/22"
          ]
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "nilpm.network.ae",
            "nilpmuat.network.ae",
            "mpos.network.ae",
            "mposbo.network.ae",
            "network.ae",
            "network.global",
            "onboarding.network.ae",
            "merchantportal-uat.network.ae",
            "customer.network.ae",
            "onboarding-uat.network.ae"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

