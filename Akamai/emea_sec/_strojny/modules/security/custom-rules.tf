resource "akamai_appsec_custom_rule" "block_specific_query_value_no_conditions_60121137" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : "utm_source",
          "nameCase" : false,
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "uriQueryMatch",
          "value" : [
            "admitad",
            "cj"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "name" : "Block specific query value (no conditions)",
      "operation" : "AND",
      "tag" : [
        "utm_source"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "test_of_client_reputation_custom_deny_60156417" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "cr_test"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "1"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "Test of Client Reputation Custom Deny",
      "operation" : "AND",
      "tag" : [
        "CR-Customy_Deny"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "ua_within_3_characters_60175005" {
  config_id = local.config_id
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
            "?",
            "??",
            "???"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "UA within 3 characters",
      "operation" : "OR",
      "tag" : [
        "UA"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "visibility_for_host_header_101ea80c231ccom_60171649" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "*101ea80c231c*.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "Visibility for host header \"*101ea80c231c*.com\"",
      "operation" : "AND",
      "tag" : [
        "*101ea80c231c*.com"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "my_ip_60152112" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "ipAddressMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "91.235.230.116"
          ]
        }
      ],
      "name" : "MY IP",
      "operation" : "AND",
      "tag" : [
        "MY_IP"
      ]
    }
  )
}

