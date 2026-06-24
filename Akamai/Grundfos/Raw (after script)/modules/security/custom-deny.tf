resource "akamai_appsec_custom_deny" "grundfos_deny_deny_custom_42278" {
  config_id = local.config_id
  custom_deny = jsonencode(
    {
      "name" : "grundfos_deny",
      "parameters" : [
        {
          "name" : "prevent_browser_cache",
          "value" : "true"
        },
        {
          "name" : "response_body_content",
          "value" : "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\n\u003cerror\u003e\n  \u003ctitle\u003eOops! Something went wrong\u003c/title\u003e\n  \u003ccode\u003e%(AK_REFERENCE_ID)\u003c/code\u003e\n  \u003cip\u003e%(AK_CLIENT_REAL_IP)\u003c/ip\u003e\n  \u003cbody\u003ePlease contact Support.\u003c/body\u003e\n\u003c/error\u003e"
        },
        {
          "name" : "response_content_type",
          "value" : "application/xml"
        },
        {
          "name" : "response_status_code",
          "value" : "403"
        }
      ]
    }
  )
}

resource "akamai_appsec_custom_deny" "grundfos_410_deny_custom_136113" {
  config_id = local.config_id
  custom_deny = jsonencode(
    {
      "description" : "410 content does not exist anymore",
      "name" : "grundfos_410",
      "parameters" : [
        {
          "name" : "prevent_browser_cache",
          "value" : "true"
        },
        {
          "name" : "response_body_content",
          "value" : "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\n\u003cerror\u003e\n  \u003ctitle\u003e410 - GONE\u003c/title\u003e\n  \u003ccode\u003e%(AK_REFERENCE_ID)\u003c/code\u003e\n  \u003cip\u003e%(AK_CLIENT_REAL_IP)\u003c/ip\u003e\n  \u003cbody\u003e410 - GONE\u003c/body\u003e\n\u003c/error\u003e"
        },
        {
          "name" : "response_content_type",
          "value" : "text/html"
        },
        {
          "name" : "response_status_code",
          "value" : "410"
        }
      ]
    }
  )
}

