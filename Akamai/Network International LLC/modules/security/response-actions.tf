resource "akamai_botman_conditional_action" "unknown_bots_response__cond_action_80265" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Unknown_Bots_Response_",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "host" : [
                "videos.network.ae",
                "www.network.global",
                "network.global",
                "posinventory.network.ae"
              ],
              "positiveMatch" : false,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Keep it as a first condition to avoid action override.",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "Apache-HttpClient/UNAVAILABLE (java 1.4)"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "host" : [
                "mpos.network.ae",
                "mposbo.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/elpaso/api/v1/*",
                "/data/*",
                "/actuator/*",
                "/onboarding-salesforce/api/v1/*",
                "/gamechange-service/*",
                "/users/*",
                "/onboarding/*",
                "/onboarding-admin/*",
                "/files/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "host" : [
                "onboarding.network.ae",
                "onboarding-uat.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "none",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193703_IPSALLOWEDFORBOTS"
              ]
            },
            {
              "host" : [
                "onboarding-uat.network.ae",
                "onboarding.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "F-CS-8766289| Resolving the false positive issue via calling network list IP's allowed for BOTS (IP) where our IP has been added.",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "token.network.ae",
                "tokenuat.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193703_IPSALLOWEDFORBOTS"
              ]
            }
          ],
          "notes" : "Exception for Token.network.ae",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "NI-Self_Onboarding"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "qxyQt3D44UpnerOR"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Whitelisting UAT traffic for self-onboarding-uat.network.ae and onboarding-uat.network.ae",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "www.network.global",
                "network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/ksa/sitemap.xml"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "nicorportal.com"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/api/v1/onboarding*",
                "/api/v1/cards*",
                "/api/v1/users*",
                "/api/v1/products*",
                "/api/v1/requests*",
                "/api/v1/customers/*",
                "/api-approval/api/v1/requests*",
                "/api-keycloak/auth/realms/Network/otp-token/*",
                "/api-support/api/v1/support/requests",
                "/api-trans-stat/api/v1/transactions/*",
                "/api-keycloak/auth/realms/Prepaid-Portal/otp-token/*",
                "/api-notifications/api/v1/notifications*",
                "/api/mine/secured-cards/cards/*",
                "/api/mine/secured-cards/security/*"
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
                "okhttp/4.11.0"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Nicorportal BMS Exception",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "apply.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193703_IPSALLOWEDFORBOTS"
              ]
            }
          ],
          "notes" : "Exception for Unknown Bots session validation failed",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_conditional_action" "allow_pingdom_and_exclude_investorsnetworkinternationalae_cond_action_87705" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Allow Pingdom and Exclude investors.networkinternational.ae",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "Pingdom.com_bot_version_*_(http://www.pingdom.com/)",
                "*PingdomPageSpeed/* (pingbot/*; +http://www.pingdom.com/)",
                "*PingdomTMS/*",
                "*Google-Site-Verification*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "investors.networkinternational.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "15169"
              ]
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "5384"
              ]
            },
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "zabbix"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "host" : [
                "nilpm.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "F-CS-8430510 - bypass AS+hostname+UA",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "financing.network.ae",
                "financinguat.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "Site24x7"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Biz2x BOT Exception",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "www.network.ae",
                "network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/*GTmetrix"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "36483"
              ]
            }
          ],
          "notes" : "GTMetrix exception",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "nigeria.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 (StatusCake)"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "253490_WAFSECURITYFILEBOTMANAG"
              ]
            }
          ],
          "notes" : "Exception for  \"nigeria.network.global\" against BMS Site Monitoring Bots",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_conditional_action" "exceptions_for_investorsnetworkinternationalae_networkae_networkglobal_cond_action_88098" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Exceptions for \"investors.networkinternational.ae\", \"network.ae\", \"network.global\"",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "investors.networkinternational.ae",
                "network.ae",
                "network.global",
                "www.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_conditional_action" "exceptions_for_investorsnetworkinternationalae_cond_action_88100" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Exceptions for \"investors.networkinternational.ae\"",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "investors.networkinternational.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_conditional_action" "allow_sfdc_useragent_and_uptrends_botnetid_cond_action_88105" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Allow SFDC User-Agent and Uptrends BotnetID",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "SFDC_STACK_DEPTH"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition"
            },
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "SFDC-Callout/*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "botnetIdCondition",
              "value" : [
                "1F6B380AAD3112F8985DE90D30A5C73E"
              ]
            },
            {
              "host" : [
                "investors.networkinternational.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "smart-uat2.network.ae",
                "nilpm.network.ae",
                "nilpmuat.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/terrapayV003/listfiles.php",
                "/application/terrapayV004/listfiles.php",
                "/lpm/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "asNumberCondition",
              "value" : [
                "15802",
                "5384"
              ]
            }
          ],
          "notes" : "F-CS-8430510 added hostname+AS+path",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "smart-uat3.network.ae",
                "smart-uat.network.ae",
                "api-sandbox.network.global",
                "api-dev.network.global",
                "smart.network.ae",
                "smart-uat2.network.ae",
                "smart-preprod.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "checkIps" : "CONNECTING",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "118018_ALLOWEDCOUNTRIESWITHHTTP"
              ]
            },
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "*Portal*",
                "*OM-A880*",
                "PostmanRuntime*",
                "Nespresso*",
                "*X990*",
                "*AT150*",
                "*AT-150*",
                "*SAIO*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "Allowing UA match requests for UAE - F-CS-6372800",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "api-uat.network.global",
                "api.network.global",
                "tokenuat.network.ae",
                "token.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/AccountServices/Enquiry/V2/*",
                "/AccountServices/Transaction/V2/*",
                "/CardControl/Enquiry/V2/*",
                "/vtis/v1/sendPasscode",
                "/UPFServices/api/v1/*",
                "/VisaInstalmentPlanRegistration*",
                "/v1/tokenkc/*",
                "/V3/LoyaltyServices/*",
                "/CardServices/Enquiry/V2/*",
                "/CardServices/Transaction/V2/*",
                "/CardControl/Transaction/V2/*",
                "/sdk/v2/security/*",
                "/falconservices/transaction/v2/*",
                "/BulkCardIssuance/Enquiry/V2/*",
                "/ngenius-webapi/payments/*",
                "/vtis/v1/retrieveStepUpMethods",
                "/sdk/v2/cards/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "checkIps" : "CONNECTING",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "177368_ALLOWFORIP"
              ]
            }
          ],
          "notes" : "Allow ip match for case F-CS-8104129 - Visa testing",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "onboarding-uat.network.ae",
                "onboarding.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/users/*",
                "/onboarding/*",
                "/files/*",
                "/migration/*",
                "/onboarding-salesforce/api/v1/*",
                "/gamechange-service/exposed/api/v1/*",
                "/elpaso/api/v1/prepaid-cards/*",
                "/ngo-refund-service/prepaid/payment-status"
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
                "PostmanRuntime/*",
                "Jersey/*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Allow onboarding-uat.network.ae - F-CS-8397043",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "CONNECTING",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "190364_DOBCLIENTIP"
              ]
            },
            {
              "host" : [
                "onboarding.network.ae",
                "apitest.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Allow ip match for F-CS-8477216/F-CS-8492868",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "191826_SOBCLIENT",
                "255487_WAFSECURITYFILEONBOARDIN"
              ]
            },
            {
              "host" : [
                "onboarding-uat.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/api/send-sms*",
                "/onboarding-salesforce*",
                "/onboarding-admin/*",
                "/archived-storage/*",
                "/contract-generation-service*",
                "/contract-signing-service*",
                "/gamechange-service*",
                "/onboarding-central-bank/*",
                "/elpaso/api/v1/*",
                "/bulk-upload-mpgs/*",
                "/onboarding-wechat/*",
                "/onboarding-screening-hub/*",
                "/merchant-data-sync/*",
                "/screening-bulk/*",
                "/visa-merchant-screening/*",
                "/email-service/*",
                "/signzy-service/*",
                "/onboarding-ui/*",
                "/users/*",
                "/amlock/*",
                "/norbloc/*",
                "/bulk-upload-wechat/*",
                "/files/*",
                "/onboarding/*",
                "/data/*",
                "/reporting/*",
                "/ngo-refund-service/prepaid/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "Browser Impersonator Exception for onboarding URL",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "api-sandbox.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193702_COUNTRIESALLOWEDFORBOTS"
              ]
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193703_IPSALLOWEDFORBOTS"
              ]
            }
          ],
          "notes" : "Allow IP and GEO for api-sandbox",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "*Portal*",
                "Nespresso*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "host" : [
                "api.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "checkIps" : "CONNECTING",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "195539_COUNTRIESALLOWEDFORAPIN"
              ]
            }
          ],
          "notes" : "Allow Specific UAs from HOST and GEO Singapore",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "CONNECTING",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "198083_NIPMOCLIENT",
                "217864_ALDARCLIENT",
                "238251_FOOIP"
              ]
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/token/*",
                "/SMSServices/*",
                "/v1/tokenkc/*",
                "/Aldar/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "host" : [
                "api.network.global",
                "api-uat.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Allow NIPMO Clients (F-CS-8724525)",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "198120_BYPASSNLFORAPIDEVNETW"
              ]
            },
            {
              "host" : [
                "api-dev.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "F-CS-8716640 | Whitelisting for requested IP address",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "198351_IPFORCONDITIONALACTION"
              ]
            },
            {
              "host" : [
                "identity-nonprod.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "F-CS-8724955",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "NI-Self_Onboarding"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "qxyQt3D44UpnerOR"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Whitelisting UAT traffic for self-onboarding-uat.network.ae and onboarding-uat.network.ae",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "NI-api_network_global"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "qxyQt3D44UpnerOT"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "host" : [
                "api.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Request Header Match towards api.network.global",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "api-uat.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "name" : [
                "NI-apiuat_network_global"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "NWyQt7D44UVner1T"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Request Header value api-uat.network.global - INC000002330926",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "api-uat.network.global",
                "api.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/v1/tokenkc/*",
                "/Aldar/*"
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
                "capillary-neo",
                "PostmanRuntime*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Exception for ALDAR Client",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "NI-api-dev_network_global"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "aNyQt3D44Upner4T"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "host" : [
                "api-dev.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Header based exception towards api-dev.network.global",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "remotedesk.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/*"
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
                "FORTRESS CLIENT"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "CRQ000000049242 - User agent for remotedesk.network.global",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "242917_WAFSECURITYFILEBOTMANAG"
              ]
            },
            {
              "host" : [
                "www.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "WAF_Security_File  Bot_Manager_Browser_Impersonator  Client list to www.network.ae",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "249184_WAFSECURITYFILEAPINETWO"
              ]
            },
            {
              "host" : [
                "api.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/v1/tokenkc/*",
                "/CardServices/*",
                "/AccountServices/*",
                "/ngenius-webapi/payments/push/v1/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "Api.network.global-Browser_Impersonator-Exception",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "sdocuments.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/salesforce/uat6/files/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "GET"
              ]
            }
          ],
          "notes" : "Browser impersonator whitelist for sdocuments.network.ae",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "nicorportal.com"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/api/mine/secured-cards/cards/*",
                "/api/mine/secured-cards/security/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "Exception for Browser Impersonator for nicorportal.com",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_conditional_action" "unknown_bots_response_esle__deny_cond_action_88106" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Unknown_Bots_Response (ESLE - DENY)",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "host" : [
                "videos.network.ae",
                "www.network.global",
                "network.global",
                "posinventory.network.ae"
              ],
              "positiveMatch" : false,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Keep it as a first condition to avoid action override.",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "Apache-HttpClient/UNAVAILABLE (java 1.4)"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "host" : [
                "mpos.network.ae",
                "mposbo.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "onboarding.network.ae",
                "onboarding-uat.network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/users/*",
                "/onboarding/*",
                "/onboarding-admin/*",
                "/files/*",
                "/data/*",
                "/actuator/*"
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
                "Go-http-client/1.1",
                "GuzzleHttp/7"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "NI-Self_Onboarding"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "qxyQt3D44UpnerOR"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            }
          ],
          "notes" : "Whitelisting UAT traffic for self-onboarding-uat.network.ae and onboarding-uat.network.ae",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_conditional_action" "webservices_libraries_exception_cond_action_158784" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Webservice's libraries Exception",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "api-sandbox.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193702_COUNTRIESALLOWEDFORBOTS"
              ]
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "193703_IPSALLOWEDFORBOTS"
              ]
            }
          ],
          "notes" : "Allow IP and GEO for api-sandbox",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "host" : [
                "api-dev.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/v1/tokenkc/*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "238875_CLIENTLISTFORAPIDEVNET"
              ]
            }
          ],
          "notes" : "Known bot towards api-dev.network.global",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "tarpit"
    }
  )
}

resource "akamai_botman_conditional_action" "allow_unknown_bots_declared_bots_cond_action_170734" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Allow Unknown Bots (Declared Bots)",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "checkIps" : "BOTH",
              "positiveMatch" : true,
              "type" : "networkListCondition",
              "value" : [
                "218749_SEOONCRAWLIPS"
              ]
            },
            {
              "host" : [
                "www.network.ae",
                "network.ae"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "SEO Team OnCrawl tool exception",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "monitor",
          "conditions" : [
            {
              "name" : [
                "NI-api_network_global"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "qxyQt3D44UpnerOT"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "host" : [
                "api.network.global"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            }
          ],
          "notes" : "Foodics - Unknown Bots (Session Validation Failed)",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "deny"
    }
  )
}

resource "akamai_botman_challenge_injection_rules" "challenge_injection_rules" {
  config_id = local.config_id
  challenge_injection_rules = jsonencode(
    {
      "ajaxResubmit" : false,
      "injectJavaScript" : false
    }
  )
}

