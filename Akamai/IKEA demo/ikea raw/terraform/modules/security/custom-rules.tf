resource "akamai_appsec_custom_rule" "visibility_rule_for_icsp_chat_bot_60082026" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/eu1/gms/genesys/2/*"
          ]
        }
      ],
      "description" : "PROTPREV-1516 - Visibility rule for icsp chat bot",
      "name" : "Visibility rule for icsp chat bot",
      "operation" : "AND",
      "tag" : [
        "icscp"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "monitor_rougue_users_based_on_contenttype_60081993" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "Content-Type"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "application/x-www-form-urlencoded"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "POST"
          ]
        }
      ],
      "description" : "Monitor rougue users based on content-type",
      "name" : "Monitor rougue users based on content-type",
      "operation" : "AND",
      "tag" : [
        "test"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "blocking_irwsharepagebyemail_60081995" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/webapp/wcs/stores/servlet/IrwSharePageByEmail"
          ]
        }
      ],
      "name" : "Blocking IrwSharePageByEmail",
      "operation" : "AND",
      "tag" : [
        "Blocking",
        "IrwSharePageByEmail"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_post_on_getuserinfo_60081991" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "POST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/webapp/wcs/stores/servlet/GetUserInfo"
          ]
        }
      ],
      "description" : "Requested by Josef Nedstam 20190219 due to a Zerocopter vulnerability case.",
      "name" : "Block POST on GetUserInfo",
      "operation" : "AND",
      "tag" : [
        "GetUserInfo",
        "POST"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_nuclei_scanning_tool_60082020" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Nuclei - Open-source project*",
            "Fuzz Faster*",
            "*Sqlmap*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Nuclei - Open-source project* \u0026 other scanning useragents",
      "name" : "Block Nuclei scanning tool",
      "operation" : "AND",
      "tag" : [
        "Nuclei"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "ingka_scambots_60082034" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "GET"
          ]
        },
        {
          "name" : "bm_sz",
          "nameCase" : false,
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "cookieMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "description" : "Custom rule to capture scam bots in www.ingka.com website",
      "name" : "Ingka_Scambots",
      "operation" : "AND",
      "tag" : [
        "Ingka"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "visbility_rule_for_metalmodel_hostname_60182770" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.metal-model.cybersec.ingka.com"
          ]
        }
      ],
      "description" : "Sample custom rule",
      "effectiveTimePeriod" : {
        "endDate" : "2023-07-05T09:55:12Z",
        "startDate" : "2023-06-28T09:55:12Z"
      },
      "name" : "Visbility rule for metal-model hostname",
      "operation" : "AND",
      "tag" : [
        "metal-model"
      ]
    }
  )
}

