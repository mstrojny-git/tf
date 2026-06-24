resource "akamai_botman_challenge_action" "wwwikeacom_and_secureikeacom_challenge_75119" {
  config_id = akamai_appsec_configuration.config.config_id
  challenge_action = jsonencode(
    {
      "actionName" : "www.ikea.com and secure.ikea.com",
      "backupAction" : "monitor",
      "challengeIntervalInSeconds" : 300,
      "challengeType" : "GOOGLE_RECAPTCHA",
      "description" : "Captcha for www.ikea.com and secure.ikea.com",
      "googleReCaptchaSiteKey" : "6Lc_OqIUAAAAAI0Pl8COf-SRlqswTHyO4La4N5L4"
    }
  )
}

resource "akamai_botman_conditional_action" "secureikeacom_conditional_actions_cond_action_75116" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Secure.ikea.com Conditional Actions",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/??/??/contact/local_*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            }
          ],
          "notes" : "local_ContactUs POST",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "Referer"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "https://secure.ikea.com/webapp/wcs/stores/servlet/IrwAddUpdateGiftCards"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/webapp/wcs/stores/servlet/IrwAddUpdateGiftCards"
              ],
              "valueCase" : false,
              "valueWildcard" : false
            }
          ],
          "notes" : "IrwAddUpdateGiftCards",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "Used primarily on secure.ikea.com to protect certain resources, such as POST forms to email services"
    }
  )
}

resource "akamai_botman_conditional_action" "wwwikeacom_slow_down_and_annoy_cond_action_75117" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "www.ikea.com Slow down and annoy",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "anotherAction" : "slow",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/webapp/wcs/stores/servlet/IrwEmailShoppingList*",
                "/webapp/wcs/stores/servlet/IrwSharePageByEmail*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            }
          ],
          "notes" : "IrwEmailShoppingList POST",
          "percentageOfTraffic" : 99
        }
      ],
      "defaultAction" : "monitor",
      "description" : "Used primarily on www.ikea.com to protect certain resources, such as POST forms to email services"
    }
  )
}

resource "akamai_botman_conditional_action" "secureikeacom__logon_conditional_actions_cond_action_75118" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "secure.ikea.com - Logon* Conditional Actions",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/webapp/wcs/stores/servlet/Logon*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "/webapp/wcs/stores/servlet/Logon*"
    }
  )
}

resource "akamai_botman_conditional_action" "secureikeacom_conditional_actions_2_logon_cond_action_75120" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Secure.ikea.com Conditional Actions -2 (logon)",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/??/??/contact/local_*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            }
          ],
          "notes" : "local_ContactUs POST",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "Referer"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "https://secure.ikea.com/webapp/wcs/stores/servlet/IrwAddUpdateGiftCards"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/webapp/wcs/stores/servlet/IrwAddUpdateGiftCards"
              ],
              "valueCase" : false,
              "valueWildcard" : false
            }
          ],
          "notes" : "IrwAddUpdateGiftCards",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/webapp/wcs/stores/servlet/Logon"
              ],
              "valueCase" : false,
              "valueWildcard" : false
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            }
          ],
          "notes" : "/webapp/wcs/stores/servlet/Logon",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "Used primarily on secure.ikea.com to protect certain resources, such as POST forms to email services"
    }
  )
}

resource "akamai_botman_conditional_action" "iows_customer_irw_cond_action_75121" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "IOWS customer IRW",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "x-forwarded-ibm-client-id"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "a2d25d2-bc28-49d2-86dc"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            },
            {
              "name" : [
                "Consumer"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "MAMMUT",
                "OWPL"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/retail/iows/??/??/customer/irw/",
                "/retail/iows/??/??/customer/irw/*/profile/deliveryaddress"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "IOWS allow only whitelisted consumers",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "x-forwarded-ibm-client-id"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "a2d25d2-bc28-49d2-86dc"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "PUT"
              ]
            },
            {
              "name" : [
                "Consumer"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "MAMMUT",
                "OWPL"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/retail/iows/??/??/customer/irw/*/profile",
                "/retail/iows/??/??/customer/irw/*/profile/deliveryaddress"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "PUT",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "ww8ikeacom_clickandcollection_cond_action_75122" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "ww8.ikea.com ClickandCollection",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST",
                "GET"
              ]
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/clickandcollect/ca/receive/listfetchlocations",
                "/clickandcollect/us/receive/",
                "/clickandcollect/us/receive/listfetchlocations",
                "/clickandcollect/ca/receive/"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "This rule is to protect ClickandCollection listfetchlocations endpoint"
    }
  )
}

resource "akamai_botman_conditional_action" "wwwingkacom_searchquery_cond_action_75123" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "www.ingka.com_searchquery",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : "s",
              "nameCase" : true,
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "queryStringCondition",
              "value" : [
                "*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "none"
    }
  )
}

resource "akamai_botman_conditional_action" "ufxhomepage__fastly_cdn_apis_cond_action_143414" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "UFX/Homepage - Fastly CDN APIs",
      "conditionalActionRules" : [
        {
          "action" : "monitor",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/oauth/token"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "none",
      "description" : "Fastly API to API traffic"
    }
  )
}

resource "akamai_botman_challenge_injection_rules" "challenge_injection_rules" {
  config_id = akamai_appsec_configuration.config.config_id
  challenge_injection_rules = jsonencode(
    {
      "injectJavaScript" : false
    }
  )
}

