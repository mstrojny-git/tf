resource "akamai_appsec_custom_rule" "empty_useragent_60041831" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "EMPTY_STRING"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [
            "app.grundfos.com",
            "net.grundfos.com"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "name" : "Empty user-agent",
      "operation" : "AND",
      "tag" : [
        "user-agent-missing"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "useragent_does_not_exist_60041837" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "requestHeaderMatch",
          "value" : [
            "app.grundfos.com",
            "net.grundfos.com"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "name" : "User-agent does not exist",
      "operation" : "AND",
      "tag" : [
        "user-agent-missing"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_on_useragents_60041965" {
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
            "axios/0.19.0",
            "*Mb2345Browser*",
            "*MQQBrowser*",
            "*LieBaoFast*",
            "*Sogou*"
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
          "type" : "requestHeaderMatch",
          "value" : [
            "app.grundfos.com",
            "net.grundfos.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "Block on User-agents",
      "operation" : "AND",
      "tag" : [
        "Block-on-user-agents"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "block_dynatrace_60042367" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/rb_ac89a30d-d288-4442-af05-1aa93de368fe"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : false,
          "valueNormalize" : false,
          "valueWildcard" : true
        }
      ],
      "name" : "Block Dynatrace",
      "operation" : "AND",
      "tag" : [
        "dynatrace_block"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "google_app_engine_virustotalcloud_60113920" {
  config_id = local.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "*AppEngine-Google; (+http://code.google.com/appengine; appid: s~virustotalcloud)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "www.grundfos.com",
            "product-selection.grundfos.com"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "description" : "Google App Engine virustotalcloud, crawler",
      "name" : "Google App Engine virustotalcloud",
      "operation" : "AND",
      "tag" : [
        "Google_App_Engine_virustotalcloud"
      ]
    }
  )
}

