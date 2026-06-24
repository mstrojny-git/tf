resource "akamai_appsec_custom_deny" "netstorage_hosted_deny_deny_custom_112320" {
  config_id = local.config_id
  custom_deny = jsonencode(
    {
      "description" : "KLM - F-CS-5892600",
      "name" : "NetStorage hosted Deny",
      "parameters" : [
        {
          "name" : "custom_deny_hostname",
          "value" : "www.strojny-ns.com"
        },
        {
          "name" : "custom_deny_path",
          "value" : "/Custom_Deny/MARO.html"
        },
        {
          "name" : "include_reference_id",
          "value" : "true"
        },
        {
          "name" : "include_true_ip",
          "value" : "true"
        },
        {
          "name" : "prevent_browser_cache",
          "value" : "true"
        },
        {
          "name" : "response_content_type",
          "value" : "text/html"
        },
        {
          "name" : "response_header_name0",
          "value" : "test"
        },
        {
          "name" : "response_header_value0",
          "value" : "test"
        },
        {
          "name" : "response_status_code",
          "value" : "666"
        }
      ]
    }
  )
}

resource "akamai_appsec_custom_deny" "ak_444_deny_deny_custom_168153" {
  config_id = local.config_id
  custom_deny = jsonencode(
    {
      "name" : "444 Deny",
      "parameters" : [
        {
          "name" : "prevent_browser_cache",
          "value" : "true"
        },
        {
          "name" : "response_body_content",
          "value" : "\u003c!doctype html\u003e\n\u003chtml\u003e\n\u003chead\u003e\n    \u003ctitle\u003eSite Maintenance\u003c/title\u003e\n    \u003cstyle type=\"text/css\"\u003ebody { text-align: center; padding: 150px; }h1 { font-size: 40px; }body { font: 16px \nHelvetica, sans-serif; color: #333; }#error { display: block; text-align: left; width: 650px; margin: 0 auto; } \n\u003c/style\u003e\n\u003c/head\u003e\n\u003cbody\u003e\n    \u003cdiv id=\"error\"\u003e\n    \u003ch1\u003eOops! Something went wrong\u003c/h1\u003e\n    \u003cdiv\u003e\n        \u003chr\u003e\n        \u003cp\u003ePlease contact your administrator with the error code: %(AK_REFERENCE_ID)\u003c/p\u003e\n    \u003c/div\u003e\n    \u003c/div\u003e\n\u003c/body\u003e\n\u003c/html\u003e"
        },
        {
          "name" : "response_content_type",
          "value" : "application/xml"
        },
        {
          "name" : "response_status_code",
          "value" : "444"
        }
      ]
    }
  )
}

