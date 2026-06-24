resource "akamai_appsec_custom_rule" "properties_1_60049004" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/p1_properties_hcs_platform_accstorefront.properties",
            "/p1_properties_hcs_platform_backoffice.properties",
            "/p1_properties_hcs_platform_backgroundProcessing.properties",
            "/p1_properties_hcs_platform_api.properties"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "Properties_1",
      "operation" : "AND",
      "tag" : [
        "Properties"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "ak_20102020attack_60038930" {
  config_id = local.config_id
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
            "/account/loginAccountSet.do"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36"
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
          "type" : "requestHeaderMatch",
          "value" : [
            "www.officedepot.fr"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Rule to block login attack on officedepot.fr (20/10/2020)",
      "name" : "20102020-Attack",
      "operation" : "AND",
      "tag" : [
        "Bruteforce"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "stamps_60084140" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/royal-mail-self-adhesive-postage-stamps-2nd-class-uk-pack-of-100-p-rm1200",
            "/en/royal-mail-2nd-class-self-adhesive-postage-stamps-pack-of-100-p-rm1200"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "To monitor URLs used for fraudulently buying stamps",
      "name" : "Stamps",
      "operation" : "AND",
      "tag" : [
        "Fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "ch_email_form_60060738" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.vikingdirekt.ch"
          ]
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/customerservice/customerServiceSet.do"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Block abuse of email form on CH site - INC7070206",
      "name" : "CH_email_form",
      "operation" : "AND",
      "tag" : [
        "spam"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "tempemail_form_60060629" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.vikingdirekt.ch"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/customerservice/customerServiceSet.do"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "monitor email form in viking CH to block spam",
      "name" : "temp-email_form",
      "operation" : "AND",
      "tag" : [
        "email_form"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "bruteforcede_60193001" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "Accept-Encoding"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Accept-Language"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/de/j_spring_security_check"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "To block bruteforce attack on viking.de 11-15/08/2023",
      "loggingOptions" : [
        {
          "id" : "ARGS_POST_MATCH",
          "value" : "j_username"
        }
      ],
      "name" : "Bruteforce-DE",
      "operation" : "AND",
      "tag" : [
        "Fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "bruteforceuk_60193581" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/j_spring_security_check"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Referer"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Accept-Language"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "loggingOptions" : [
        {
          "id" : "ARGS_POST_MATCH",
          "value" : "j_username"
        }
      ],
      "name" : "Bruteforce-UK",
      "operation" : "AND",
      "tag" : [
        "Fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "bruteforcede2_60196111" {
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
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 OPR/101.0.0.0",
            "Mozilla/5.0 (PPC) AppleWebKit/526.0 (KHTML, like Gecko) Chrome/92.0159.599 Safari/526"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "ipAddressMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "117.251.103.186",
            "70.35.199.99"
          ]
        }
      ],
      "description" : "05092023 - block User-Agents",
      "loggingOptions" : [
        {
          "id" : "ARGS_POST_MATCH",
          "value" : "j_username"
        }
      ],
      "name" : "Bruteforce-DE-2",
      "operation" : "AND",
      "tag" : [
        "Fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "asm1_60196891" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/assisted-service/asm-search-autocomplete",
            "/nl/assisted-service/asm-search-autocomplete",
            "/de/assisted-service/asm-search-autocomplete",
            "/fr/assisted-service/asm-search-autocomplete",
            "/fr/assisted-service/*",
            "/nl/assisted-service/*",
            "/de/assisted-service/*",
            "/en/assisted-service/*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Monitor access to ASM URLs",
      "name" : "ASM1",
      "operation" : "AND",
      "tag" : [
        "security"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "monitor_login_60178600" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/j_spring_security_check\r",
            "/nl/my-account",
            "/de/my-account",
            "/fr/my-account",
            "/fr/checkout/j_spring_security_check",
            "/de/j_spring_security_check\r",
            "/en/checkout/j_spring_security_check\r",
            "/de/checkout/j_spring_security_check\r",
            "/nl/j_spring_security_check\r",
            "/nl/checkout/j_spring_security_check\r",
            "/fr/j_spring_security_check",
            "/en/my-account"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "loggingOptions" : [
        {
          "id" : "ARGS_POST_MATCH",
          "value" : "j_username"
        }
      ],
      "name" : "Monitor_login",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "qqbrowser_60223293" {
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
            "*QQBrowser*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "To block access from Chinese browser. Brute force on January 2024.",
      "name" : "QQBrowser",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "checkemailexist_60221740" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/ajax/registration/multi/about-you/check-email-exist"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Monitor email checks during registration process /ajax/registration/multi/about-you/check-email-exist",
      "loggingOptions" : [
        {
          "id" : "URI_QUERY_MATCH",
          "value" : "emailId"
        }
      ],
      "name" : "check-email-exist",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "princegb_60249659" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "asNumberMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "25369",
            "62240"
          ]
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:1??.0) Gecko/20100101 Firefox/1??.0"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/checkout/order-confirmation/*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "name" : "princegb",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "facebook_crawler_60261105" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "asNumberMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "32934"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/ink-cartridges-toner-ribbons-c-113/toner-cartridges-c-11303/original-toner-cartridges-c-11303020/*",
            "/en/ink-cartridges-toner-ribbons-c-113/ink-cartridges-c-11301/*",
            "/de/buromobel-c-104/einrichtung-c-10401/*",
            "/de/schreibtisch-ausstattung-c-102/*",
            "/fr/ecriture-et-dessin-c-111/crayons-et-materiel-de-dessin-c-11103/*",
            "/fr/classeurs-et-dossiers-c-120/classeurs-et-classeurs-anneaux-c-120002/*",
            "/nl/bureaubenodigdheden-c-102/notitieboeken-blokken-schriften-c-10202/*",
            "/fr/fournitures-de-bureau-c-102/cahiers-blocs-notes-et-recharges-de-notes-c-10202/*",
            "/nl/mappen-ordners-c-120/ordners-ringbanden-c-120002/*",
            "/de/schreibtisch-ausstattung-c-102/notizbucher-notizblocke-zettel-c-10202/*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Facebook calling millions of times a URL from UK and IE about tonners",
      "name" : "Facebook_crawler",
      "operation" : "AND",
      "tag" : [
        "crawler"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "princegbnordvpn_60250571" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "asNumberMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "62240"
          ]
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:127.0) Gecko/20100101 Firefox/127.0",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:1??.0) Gecko/20100101 Firefox/1??.0"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        }
      ],
      "name" : "princegb-NordVPN",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "monitor_loyalty_60249483" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/ajax/loyalty/linkLoyaltyScheme"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "loggingOptions" : [
        {
          "id" : "ARGS_POST_MATCH",
          "value" : "cardNumber"
        }
      ],
      "name" : "monitor_loyalty",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "loyalty_attackoptanon_60275731" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/ajax/loyalty/linkLoyaltyScheme"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "name" : "OptanonConsent",
          "nameCase" : false,
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "cookieMatch",
          "value" : [
            "*(Greenwich+Mean+Time)*",
            "*(British+Summer+Time)*",
            "*(GMT)*",
            "*(BST)*",
            "*(Irish+Standard+Time)*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Block Nectar attack based on Geo location of OptanonConsent cookie",
      "name" : "Loyalty_attack-Optanon",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "order_confirmation_60234906" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/*/checkout/order-confirmation/*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Monitor order confirmations to make easier fraud investigations",
      "loggingOptions" : [
        {
          "id" : "COOKIE_MATCH",
          "value" : "odCID"
        }
      ],
      "name" : "Order_confirmation",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "monitor_registration_60251165" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/registration/multi/about-you",
            "/en/registration/multi/billing",
            "/en/my-account/registrationcomplete"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "name" : "monitor_registration",
      "operation" : "AND",
      "tag" : [
        "investigation"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "loyalty_attack_60252635" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/ajax/loyalty/linkLoyaltyScheme"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "name" : "ROUTE",
          "nameCase" : false,
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "cookieMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "name" : "Loyalty_attack",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "princegb_old_rruserid_60279065" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/checkout*",
            "/en/login/checkout*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Cookie"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "*rrUserId=08657360*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "PrinceGB_old_rruserid",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "cloudflare_login_60173233" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk",
            "www.viking.de",
            "www.vikingdirect.nl",
            "www.vikingdirect.be",
            "www.vikingdirekt.ch",
            "www.vikingdirekt.at",
            "www.vikingdirect.ie"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/en/j_spring_security_check",
            "/de/j_spring_security_check",
            "/en/checkout/j_spring_security_check",
            "/de/checkout/j_spring_security_check",
            "/nl/j_spring_security_check",
            "/nl/checkout/j_spring_security_check",
            "/fr/j_spring_security_check"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "positiveMatch" : true,
          "type" : "asNumberMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "13335",
            "211252",
            "62651",
            "54203",
            "22781"
          ]
        },
        {
          "positiveMatch" : false,
          "type" : "ipAddressMatch",
          "useXForwardForHeaders" : false,
          "value" : [
            "8.29.109.131",
            "104.28.45.0/24",
            "104.28.53.0/24",
            "104.28.88.0/24",
            "104.28.64.0/24",
            "104.28.135.0/24",
            "104.28.98.0/24",
            "104.28.129.0/24",
            "104.28.114.0/24",
            "104.28.54.0/24",
            "8.29.228.65",
            "8.29.228.119",
            "8.29.109.73",
            "8.29.109.91",
            "8.29.228.82",
            "8.29.231.33",
            "8.29.231.67",
            "8.29.231.68",
            "8.29.231.69",
            "8.29.231.70",
            "8.29.231.71",
            "8.29.231.72",
            "2a09:bac2::0000/32",
            "8.29.231.73",
            "8.29.231.74",
            "8.29.231.75",
            "104.28.42.0/24",
            "104.28.40.0/24",
            "2a09:bac3::0000/32",
            "104.28.86.0/24",
            "104.28.62.0/24",
            "104.28.89.0/24",
            "104.28.30.0/24"
          ]
        },
        {
          "name" : "j_username",
          "positiveMatch" : false,
          "type" : "argsPostMatch",
          "value" : [
            "nord.com"
          ],
          "valueExactMatch" : false
        }
      ],
      "description" : "Block login from CloudFlare ASN",
      "loggingOptions" : [
        {
          "id" : "ARGS_POST_MATCH",
          "value" : "j_username"
        }
      ],
      "name" : "Cloudflare_login",
      "operation" : "AND",
      "tag" : [
        "Fraud"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_08473795_60252875" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "hostMatch",
          "value" : [
            "www.viking-direct.co.uk"
          ]
        },
        {
          "name" : "rrUserId",
          "nameCase" : false,
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "cookieMatch",
          "value" : [
            "08473795",
            "08685573",
            "08698572",
            "08832395",
            "08699645",
            "08737411",
            "08700630",
            "08684379",
            "08684936",
            "08693262",
            "08689013",
            "08693734",
            "08698497"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "name" : "Block 08473795",
      "operation" : "AND",
      "tag" : [
        "fraud"
      ]
    }
  )
}

