resource "akamai_botman_conditional_action" "mitigate_get_at_login_cond_action_18831" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Mitigate GET at login",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "GET"
              ]
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/login/index.jsp"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "Match on Path",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "path_grm_exception_cond_action_23303" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Path /grm exception",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : false,
              "type" : "urlPatternCondition",
              "value" : [
                "/grm*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "Tarpiting traffic on except on \"/grm*\""
    }
  )
}

resource "akamai_botman_conditional_action" "path_webtranslate_exception_cond_action_42194" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Path /Webtranslate exception",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "host" : [
                "net.grundfos.com"
              ],
              "positiveMatch" : true,
              "type" : "hostCondition"
            },
            {
              "positiveMatch" : false,
              "type" : "urlPatternCondition",
              "value" : [
                "/Webtranslate*",
                "/webtranslate*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "tarpit_not_on_net_and_app_cond_action_52431" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Tarpit not on net and app",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "System Health Dashboard"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "name" : [
                "Host"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "net.grundfos.com",
                "app.grundfos.com"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "block_bots_on_ww_also_block_search_bots_on_test_domains_cond_action_52611" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Block bots on /ww/* also block search bots on test domains",
      "conditionalActionRules" : [
        {
          "action" : "delay",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "*google*",
                "*atomz*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/ww/*",
                "/ww/"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "name" : [
                "Host"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "net.grundfos.com",
                "app.grundfos.com"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        },
        {
          "action" : "deny_custom_136113",
          "conditions" : [
            {
              "name" : [
                "host"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "wwwsand01.grundfos.com",
                "wwwtest.grundfos.com",
                "portalstest.grundfos.com",
                "portalssand01.grundfos.com",
                "product-selectionsand.grundfos.com",
                "product-selectionsand01.grundfos.com",
                "product-selectiontest.grundfos.com",
                "wwwsand.grundfos.com",
                "portalssand.grundfos.com"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "notes" : "Server 404 on test domains to search engine crawlers",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "tarpit_not_on_netappgpcwww_cond_action_85634" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Tarpit NOT on net,app,gpc,www",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "System Health Dashboard"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "name" : [
                "Host"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "app.grundfos.com",
                "product-selection.grundfos.com",
                "www.grundfos.com",
                "grundfos.com",
                "net.grundfos.com"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor"
    }
  )
}

resource "akamai_botman_conditional_action" "path_grm_exception_and_allow_siteimprove_cond_action_91469" {
  config_id = local.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Path /grm exception and allow siteimprove",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "User-Agent"
              ],
              "nameWildcard" : true,
              "positiveMatch" : false,
              "type" : "requestHeaderCondition",
              "value" : [
                "*siteimprove*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : false,
              "type" : "urlPatternCondition",
              "value" : [
                "/grm*"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            }
          ],
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "Tarpiting traffic except on \"/grm*\" and allowing siteimprove"
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

