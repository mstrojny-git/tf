resource "akamai_appsec_custom_rule" "block_based_on_tls_hash_and_ho_60066532" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "clientTlsFingerprintMatch",
          "value" : [
            "1445f22e9a07240e"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "headerOrderMatch",
          "value" : "Accept:Accept-Encoding:Accept-Language:Cache-Control:Pragma:Connection:Referer:Upgrade-Insecure-Requests:User-Agent:X-Forwarded-For:X-Real-Ip:Host",
          "valueCase" : false,
          "valueExactMatch" : false
        }
      ],
      "name" : "Block based on TLS Hash and HO",
      "operation" : "AND",
      "tag" : [
        "CUSTOM/TLS-HASH-BLOCK"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_traffic_on_orabankganetworkaeconsoleloginloginformjsp_60120471" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "orabankga.network.ae"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/console/login/LoginForm.jsp"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Blocking traffic on orabankga.network.ae/console/login/LoginForm.jsp. \nNo traffic from public internet is expected.",
      "name" : "Block traffic on orabankga.network.ae/console/login/LoginForm.jsp",
      "operation" : "AND",
      "tag" : [
        "deny_on_login"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "bad_get_request_to_wwwnetworkae_with_contentlength_0_60210868" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.network.ae"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "GET"
          ]
        },
        {
          "name" : [
            "Content-Length"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "0"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "loggingOptions" : [
        {
          "id" : "HEADER_ORDER_MATCH"
        }
      ],
      "name" : "Bad GET request to www.network.ae with Content-Length 0",
      "operation" : "AND",
      "tag" : [
        "block",
        "content-length"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "bad_request_to_wwwnetworkae_with_header_frefererf_60210869" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.network.ae"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "GET"
          ]
        },
        {
          "name" : [
            "F-Referer-F"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "loggingOptions" : [
        {
          "id" : "HEADER_ORDER_MATCH"
        }
      ],
      "name" : "Bad request to www.network.ae with header F-Referer-F",
      "operation" : "AND",
      "tag" : [
        "request-header"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "bad_request_to_wwwnetworkae_with_header_fcookief_60210870" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.network.ae"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "GET"
          ]
        },
        {
          "name" : [
            "F-Cookie-F"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "loggingOptions" : [
        {
          "id" : "HEADER_ORDER_MATCH"
        }
      ],
      "name" : "Bad request to www.network.ae with header F-Cookie-F",
      "operation" : "AND",
      "tag" : [
        "request-header"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "filepath_block_vcardnetworkae_60299692" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "vcard.network.ae"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/vcard.zip"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Blocking unnecessary file paths  for Vcard.network.ae",
      "name" : "Filepath_Block_Vcard.network.ae",
      "operation" : "AND",
      "tag" : [
        "vcard"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_based_only_on_tls_60066533" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : false,
          "type" : "ipAddressMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "34.244.35.222",
            "51.112.26.143",
            "3.29.206.181",
            "34.22.96.192",
            "128.199.105.174",
            "13.246.69.81",
            "159.223.74.121",
            "209.97.171.44",
            "143.110.177.252",
            "13.247.35.194",
            "165.22.210.218",
            "143.110.177.254",
            "143.110.177.18",
            "89.107.56.224",
            "20.174.66.37"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "clientTlsFingerprintMatch",
          "value" : [
            "1445f22e9a07240e"
          ]
        }
      ],
      "name" : "Block based only on TLS",
      "operation" : "AND",
      "tag" : [
        "CUSTOM_AKA/Bad_TLS_Blocked"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "blockiocallconfig_60373586" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "clientListMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "270759_BLOCKIOCALLCONFIGASN"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "clientListMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "270758_BLOCKIOCALLCONFIGGEO"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "clientListMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "270757_BLOCKIOCALLCONFIGIPCID"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "clientListMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "270760_BLOCKIOCALLCONFIGTLSFP"
          ]
        }
      ],
      "description" : "Custom rule name – Block-IOC-All-Config\nClient list name – Block-IOC-All-Config\nChange description – Proactive Configuration of custom rule to block indicator of attacks or compromises as part of current middleast situation\nChange number - CRQ000000062279\nChange requester – Praveen chandran",
      "name" : "Block-IOC-All-Config",
      "operation" : "OR",
      "tag" : [
        "Block-IOC-All-Config"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "visibility_rule_for_applynetworkaeapiv1otpsend_60397408" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "apply.network.ae"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/api/v1/otp/send"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "F-CS-11474457 - Visibility rule for apply.network.ae/api/v1/otp/send.",
      "name" : "Visibility rule for apply.network.ae/api/v1/otp/send.",
      "operation" : "AND",
      "tag" : [
        "Visibility"
      ]
    }
  )
}

