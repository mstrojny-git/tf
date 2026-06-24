resource "akamai_botman_custom_bot_category" "webappwcsstoresservletirwwscfbdeliverydetail_quickfix_74de858c-75ab-4854-a9ed-64ae76d31982" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "/webapp/wcs/stores/servlet/IrwWSCfbDeliveryDetail quickfix",
      "notes" : "/webapp/wcs/stores/servlet/IrwWSCfbDeliveryDetail quickfix"
    }
  )
}

resource "akamai_botman_custom_bot_category" "aci_payment_service_provider_5f758a61-69e9-465c-8b0b-60d197ea78ab" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "ACI Payment Service Provider",
      "description" : "INC000010414314: ACI needs to be able to call /webapp/wcs/stores/servlet/IrwPaymentTiebackListener without being blocked by BM.",
      "notes" : "INC000010414314: ACI needs to be able to call /webapp/wcs/stores/servlet/IrwPaymentTiebackListener without being blocked by BM."
    }
  )
}

resource "akamai_botman_custom_bot_category" "aggressive_useragent_gohttpclient20_spam_266aa415-3346-4bd5-a89c-c9c518dad1d3" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Aggressive User-Agent Go-http-client/2.0 spam",
      "notes" : "We don't know much about these request but it is about 2980 request/second from Amazon AS number 16509 with UA Go-http-client/2.0. Blocking it to see if any complains comes in."
    }
  )
}

resource "akamai_botman_custom_bot_category" "bot__apachehttpasyncclient402_java_15_c62d5c1b-d9f7-43c9-a474-1e3b293bd077" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "BOT - Apache-HttpAsyncClient/4.0.2 (java 1.5)",
      "description" : "Manual mitigation of Bots",
      "notes" : "Manual mitigation of Bots"
    }
  )
}

resource "akamai_botman_custom_bot_category" "becommerce_870bc945-4dd2-4a27-a1a0-b4a04a91ab33" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "BeCommerce",
      "description" : "BeCommerce certification (security scan)"
    }
  )
}

resource "akamai_botman_custom_bot_category" "ciam_auth0_breakout_points_408206c9-698a-4b4b-8c74-28f3fec008ee" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "CIAM Auth0 BreakOut points",
      "description" : "CDNSD-2154",
      "notes" : "CDNSD-2154"
    }
  )
}

resource "akamai_botman_custom_bot_category" "catchpoint_a9436e96-8d15-4b04-86b6-eae6bd424bbd" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Catchpoint"
    }
  )
}

resource "akamai_botman_custom_bot_category" "contact_page__enforce_valid_request__time_tracking_63f63e02-f113-4a22-8985-08fe6208763a" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Contact Page - Enforce valid request + Time Tracking"
    }
  )
}

resource "akamai_botman_custom_bot_category" "ecb_bot_c6031272-ca63-49e6-b86b-919fe8e512b0" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "ECB BOT",
      "description" : "European Central Bank"
    }
  )
}

resource "akamai_botman_custom_bot_category" "http_referrer_block__wwwikeacom_9986ae8c-ed4f-484a-9817-b35c1dd8c07a" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "HTTP referrer block - www.ikea.com",
      "notes" : "Block rouge users based HTTP referrer"
    }
  )
}

resource "akamai_botman_custom_bot_category" "http10_and_blankmissing_ua_57fff3b7-56bd-48c9-93e6-a01662a11f81" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "HTTP1.0 and blank/missing UA"
    }
  )
}

resource "akamai_botman_custom_bot_category" "heimdall_scanner_ingka_f1018be3-07f5-403b-add8-cfe3fb9eb88d" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Heimdall Scanner (Ingka)",
      "description" : "Internal Vulnerability Scanner",
      "notes" : "Owner Shivam Saraswat"
    }
  )
}

resource "akamai_botman_custom_bot_category" "hotjar_bot_652b957a-78a3-471d-aa78-e95bfd3436e5" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Hotjar Bot",
      "description" : "heatmap to record clicks on all our product information pages"
    }
  )
}

resource "akamai_botman_custom_bot_category" "ikeainternal_18eadbcb-57db-4f2e-8621-7732d1506296" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Ikea-Internal",
      "description" : "Bots originating from Ikea IP ranges",
      "notes" : "Bots originating from Ikea IP ranges -Part of Epic NGES-2 (NGES-51)"
    }
  )
}

resource "akamai_botman_custom_bot_category" "ingka_scam_bots_53189a93-5178-4e4f-8142-5e59adcd4ca0" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Ingka_Scam Bots",
      "description" : "Restrict scam Bots in www.ingka.com"
    }
  )
}

resource "akamai_botman_custom_bot_category" "klarna_se_f4dffc40-6336-42eb-811a-932190ffb17e" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Klarna SE",
      "description" : "SE Market Klarna Integrator on AWS",
      "notes" : "Contact: Daniel Banjanin - daniel.banjanin@ikea.com"
    }
  )
}

resource "akamai_botman_custom_bot_category" "m2_1d7d8fbf-23e9-4c54-9868-538411e561ff" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "M2",
      "description" : "M2 BOTS",
      "notes" : "M2 BOTS"
    }
  )
}

resource "akamai_botman_custom_bot_category" "mobilefirst_ibm_b7711078-708e-4bef-b440-c38aafe761b1" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "MobileFirst IBM",
      "description" : "MobileFirst IBM SoftLayer cloud"
    }
  )
}

resource "akamai_botman_custom_bot_category" "monsido_bot_26ba67b6-17a8-4e6b-8eb3-0a8ea0f960e1" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Monsido BOT",
      "description" : "Used for www.ikea.com and ww8.ikea.com"
    }
  )
}

resource "akamai_botman_custom_bot_category" "motionpoint_proxy_searchbots_bee155df-4933-4d7e-983e-3b8e61cb19d5" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "MotionPoint Proxy SearchBOTs",
      "description" : "MotionPoint translation service Proxy",
      "notes" : "This rule is just for tracking purposes. No action should be taken on this traffic."
    }
  )
}

resource "akamai_botman_custom_bot_category" "motionpointukrackspaceallowed_dde3de01-3e29-4888-bbcd-475713357ecb" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "MotionPoint-UK-Rackspace-Allowed",
      "description" : "To allow only required ips of UK rackspace for MotionPoint service",
      "notes" : "To allow only required ips of UK rackspace for MotionPoint service"
    }
  )
}

resource "akamai_botman_custom_bot_category" "onetrust_scanner_183980fc-74c2-482a-90a1-0aebfcb5efb0" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "OneTrust scanner",
      "description" : "Used for One Web Frontennd"
    }
  )
}

resource "akamai_botman_custom_bot_category" "onetrust_cookie_crawler_4c7e5482-a24b-474d-898e-7631957b115f" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Onetrust cookie crawler",
      "description" : "Onetrust cookie crawler",
      "notes" : "Adding a customer-categorized bot to accept scanning from 40.85.82.207 (cookies.onetrust.com) on request from SEO Manager Magnus Dahl. This is related to GDPR compliancy work."
    }
  )
}

resource "akamai_botman_custom_bot_category" "productsup_crawler_5d4f7881-d522-4f0b-ab00-ab6de7255430" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Productsup Crawler",
      "description" : "Productsup Crawler",
      "notes" : "Arnoldo Cabrera, SEO Manager, contacted us 20180903 and asked us to create an exception for this bot."
    }
  )
}

resource "akamai_botman_custom_bot_category" "publicera_bot_script_90e51013-ad80-4e1b-9250-0a17cc150cbd" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Publicera BOT Script",
      "description" : "CDNSD-1538"
    }
  )
}

resource "akamai_botman_custom_bot_category" "publicera_content_crawler_eb782c6b-53d1-4fbe-8996-4f24706045a8" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Publicera Content Crawler",
      "description" : "Crawler for publicera pages in m2|www.ikea.com and dev environments."
    }
  )
}

resource "akamai_botman_custom_bot_category" "ufxhomepage__fastly_cdn_apis_aeb1cd30-99d6-431f-b9b4-0824c9a72b76" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "UFX/Homepage - Fastly CDN APIs",
      "description" : "Disable BM cookies for Fastly API to API calls"
    }
  )
}

resource "akamai_botman_custom_bot_category" "igift_bmp_bypass_japan__korea_4a0f4413-c5e0-4c1d-9d59-928ffd5cc78f" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "igift BMP bypass Japan \u0026 Korea",
      "description" : "igift BMP bypass Japan \u0026 Korea",
      "notes" : "aaron.long1@ingka.ikea.com,  mateus.oliveira@ingka.ikea.com"
    }
  )
}

resource "akamai_botman_custom_bot_category" "iows_blocked_user_agents_4b318a52-c5a0-4624-aa5f-500d00e338b0" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "iows Blocked User agents"
    }
  )
}

resource "akamai_botman_custom_bot_category" "iowsikeacom_13bda931-bd79-4825-8560-4123f37e0bbc" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "iows.ikea.com"
    }
  )
}

resource "akamai_botman_custom_bot_category" "iowsikeacom_gcp_b5011657-413a-4f5c-a981-838124e312e4" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "iows.ikea.com GCP",
      "notes" : "https://iows.ppe.ikeadt.com/retail/payments/subscription/gcp needs to be accepted if a UA has been used: APIs-Google; (+https://developers.google.com/webmasters/APIs-Google.html)"
    }
  )
}

resource "akamai_botman_custom_bot_category" "k2fragmentsfetcher_e3ec85d5-5c5c-43cc-a347-0716ec9db3c2" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "k2-fragments-fetcher",
      "notes" : "Jira ticket CDNSD-466: need to allow request from this tool in order to work in Poland."
    }
  )
}

resource "akamai_botman_custom_bot_category" "planowaniekuchniserverside_e5235d40-34e5-4e0b-a324-4d6f1cbcaafd" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "planowaniekuchni-serverside",
      "description" : "CDNSD-474"
    }
  )
}

resource "akamai_botman_custom_bot_category" "rrdeasyling_bot_1eb94f73-0724-4b57-8496-6797e43d99c8" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "rrd-easyling bot",
      "description" : "rrd-easyling bot",
      "notes" : "Ikea Spain is using this bot for scanning their site daily. Magnus Dahl has approve to whitelist the traffic from this bot"
    }
  )
}

resource "akamai_botman_custom_bot_category_sequence" "custom_bot_category_sequence" {
  config_id    = akamai_appsec_configuration.config.config_id
  category_ids = [akamai_botman_custom_bot_category.motionpoint_proxy_searchbots_bee155df-4933-4d7e-983e-3b8e61cb19d5.category_id, akamai_botman_custom_bot_category.mobilefirst_ibm_b7711078-708e-4bef-b440-c38aafe761b1.category_id, akamai_botman_custom_bot_category.contact_page__enforce_valid_request__time_tracking_63f63e02-f113-4a22-8985-08fe6208763a.category_id, akamai_botman_custom_bot_category.http10_and_blankmissing_ua_57fff3b7-56bd-48c9-93e6-a01662a11f81.category_id, akamai_botman_custom_bot_category.bot__apachehttpasyncclient402_java_15_c62d5c1b-d9f7-43c9-a474-1e3b293bd077.category_id, akamai_botman_custom_bot_category.m2_1d7d8fbf-23e9-4c54-9868-538411e561ff.category_id, akamai_botman_custom_bot_category.productsup_crawler_5d4f7881-d522-4f0b-ab00-ab6de7255430.category_id, akamai_botman_custom_bot_category.rrdeasyling_bot_1eb94f73-0724-4b57-8496-6797e43d99c8.category_id, akamai_botman_custom_bot_category.hotjar_bot_652b957a-78a3-471d-aa78-e95bfd3436e5.category_id, akamai_botman_custom_bot_category.klarna_se_f4dffc40-6336-42eb-811a-932190ffb17e.category_id, akamai_botman_custom_bot_category.aci_payment_service_provider_5f758a61-69e9-465c-8b0b-60d197ea78ab.category_id, akamai_botman_custom_bot_category.onetrust_cookie_crawler_4c7e5482-a24b-474d-898e-7631957b115f.category_id, akamai_botman_custom_bot_category.catchpoint_a9436e96-8d15-4b04-86b6-eae6bd424bbd.category_id, akamai_botman_custom_bot_category.monsido_bot_26ba67b6-17a8-4e6b-8eb3-0a8ea0f960e1.category_id, akamai_botman_custom_bot_category.publicera_content_crawler_eb782c6b-53d1-4fbe-8996-4f24706045a8.category_id, akamai_botman_custom_bot_category.onetrust_scanner_183980fc-74c2-482a-90a1-0aebfcb5efb0.category_id, akamai_botman_custom_bot_category.k2fragmentsfetcher_e3ec85d5-5c5c-43cc-a347-0716ec9db3c2.category_id, akamai_botman_custom_bot_category.planowaniekuchniserverside_e5235d40-34e5-4e0b-a324-4d6f1cbcaafd.category_id, akamai_botman_custom_bot_category.webappwcsstoresservletirwwscfbdeliverydetail_quickfix_74de858c-75ab-4854-a9ed-64ae76d31982.category_id, akamai_botman_custom_bot_category.iows_blocked_user_agents_4b318a52-c5a0-4624-aa5f-500d00e338b0.category_id, akamai_botman_custom_bot_category.iowsikeacom_13bda931-bd79-4825-8560-4123f37e0bbc.category_id, akamai_botman_custom_bot_category.aggressive_useragent_gohttpclient20_spam_266aa415-3346-4bd5-a89c-c9c518dad1d3.category_id, akamai_botman_custom_bot_category.publicera_bot_script_90e51013-ad80-4e1b-9250-0a17cc150cbd.category_id, akamai_botman_custom_bot_category.iowsikeacom_gcp_b5011657-413a-4f5c-a981-838124e312e4.category_id, akamai_botman_custom_bot_category.ciam_auth0_breakout_points_408206c9-698a-4b4b-8c74-28f3fec008ee.category_id, akamai_botman_custom_bot_category.http_referrer_block__wwwikeacom_9986ae8c-ed4f-484a-9817-b35c1dd8c07a.category_id, akamai_botman_custom_bot_category.ecb_bot_c6031272-ca63-49e6-b86b-919fe8e512b0.category_id, akamai_botman_custom_bot_category.becommerce_870bc945-4dd2-4a27-a1a0-b4a04a91ab33.category_id, akamai_botman_custom_bot_category.ingka_scam_bots_53189a93-5178-4e4f-8142-5e59adcd4ca0.category_id, akamai_botman_custom_bot_category.ikeainternal_18eadbcb-57db-4f2e-8621-7732d1506296.category_id, akamai_botman_custom_bot_category.motionpointukrackspaceallowed_dde3de01-3e29-4888-bbcd-475713357ecb.category_id, akamai_botman_custom_bot_category.heimdall_scanner_ingka_f1018be3-07f5-403b-add8-cfe3fb9eb88d.category_id, akamai_botman_custom_bot_category.ufxhomepage__fastly_cdn_apis_aeb1cd30-99d6-431f-b9b4-0824c9a72b76.category_id, akamai_botman_custom_bot_category.igift_bmp_bypass_japan__korea_4a0f4413-c5e0-4c1d-9d59-928ffd5cc78f.category_id]
}

resource "akamai_botman_custom_defined_bot" "aci_bot_b3c4e7cf-6334-4a2f-a16e-ed4598ed8139" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "ACI Bot",
      "categoryId" : "5f758a61-69e9-465c-8b0b-60d197ea78ab",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "139.131.76.67"
          ]
        }
      ],
      "description" : "INC000010414314: ACI needs to be able to call /webapp/wcs/stores/servlet/IrwPaymentTiebackListener without being blocked by BM.",
      "notes" : "INC000010414314: ACI needs to be able to call /webapp/wcs/stores/servlet/IrwPaymentTiebackListener without being blocked by BM."
    }
  )
}

resource "akamai_botman_custom_defined_bot" "aggressive_useragent_gohttpclient20_spam_from_amazon_21f9e2ca-1bc7-46f4-ad8f-a986b0c48e58" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Aggressive User-Agent Go-http-client/2.0 spam from Amazon",
      "categoryId" : "266aa415-3346-4bd5-a89c-c9c518dad1d3",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
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
            "Go-http-client/2.0"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "allow_gcp_df070c67-d47d-4a2e-822c-51bfe118de7b" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Allow GCP",
      "categoryId" : "b5011657-413a-4f5c-a981-838124e312e4",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "APIs-Google; (+https://developers.google.com/webmasters/APIs-Google.html)"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "name" : [
            "Authorization"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition"
        },
        {
          "name" : [
            "From"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "noreply@google.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Content-Type"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "application/json"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "Accept"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "application/json"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "notes" : "CDNSD-1805"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "apachehttpasyncclient402_java_15_25e6071d-96e6-4760-96df-6b745290f600" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Apache-HttpAsyncClient/4.0.2 (java 1.5)",
      "categoryId" : "c62d5c1b-d9f7-43c9-a474-1e3b293bd077",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Apache-HttpAsyncClient*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Apache-HttpAsyncClient/4.0.2 (java 1.5)",
      "notes" : "To tarpit Apache-HttpAsyncClient/4.0.2 (java 1.5) request for Logon*"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "becommerce_17b19133-59e4-434f-82cb-bde8b2c4aaa6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "BeCommerce",
      "categoryId" : "870bc945-4dd2-4a27-a1a0-b4a04a91ab33",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "64.39.102.0/24",
            "2001:1478:1100:4000::/64"
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
            "*ForusP"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "ownerName" : "Joost Faes",
      "ownerUrl" : "https://www.ikea.com/be/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ciam_auth0_breakout_points_australia_ff14dba7-7999-4e9f-b176-8bac4c166a7b" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "CIAM Auth0 BreakOut Points Australia",
      "categoryId" : "408206c9-698a-4b4b-8c74-28f3fec008ee",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "52.64.84.177",
            "52.64.111.197",
            "54.153.131.0",
            "13.210.52.131",
            "13.55.232.24",
            "13.54.254.182",
            "52.62.91.160",
            "52.63.36.78",
            "52.64.120.184",
            "54.66.205.24",
            "54.79.46.4"
          ]
        }
      ],
      "ownerEmail" : "claes.grehall@ingka.ikea.com",
      "ownerName" : "Claes Grehall"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ciam_auth0_breakout_points_usa_b732dbeb-1adf-488d-bcaf-07c30b1efb62" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "CIAM Auth0 BreakOut Points USA",
      "categoryId" : "408206c9-698a-4b4b-8c74-28f3fec008ee",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "35.167.74.121",
            "35.166.202.113",
            "35.160.3.103",
            "54.183.64.135",
            "54.67.77.38",
            "54.67.15.170",
            "54.183.204.205",
            "35.171.156.124",
            "18.233.90.226",
            "3.211.189.167",
            "18.232.225.224",
            "34.233.19.82",
            "52.204.128.250",
            "3.132.201.78",
            "3.19.44.88",
            "3.20.244.231",
            "18.232.225.224",
            "34.233.19.82",
            "52.204.128.250",
            "3.132.201.78",
            "3.19.44.88"
          ]
        }
      ],
      "ownerEmail" : "claes.grehall@ingka.ikea.com",
      "ownerName" : "Claes Grehall"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ciam_auth0_breakout_points_europe_41ea8597-c521-457a-957d-8b5ec7f06da6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "CIAM Auth0 BreakOut points Europe",
      "categoryId" : "408206c9-698a-4b4b-8c74-28f3fec008ee",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "52.28.56.226",
            "52.28.45.240",
            "52.16.224.164",
            "52.16.193.66",
            "34.253.4.94",
            "52.50.106.250",
            "52.211.56.181",
            "52.213.38.246",
            "52.213.74.69",
            "52.213.216.142",
            "35.156.51.163",
            "35.157.221.52",
            "52.28.184.187",
            "52.28.212.16",
            "52.29.176.99",
            "52.57.230.214",
            "54.76.184.103",
            "52.210.122.50",
            "52.208.95.174"
          ]
        }
      ],
      "ownerEmail" : "claes.grehall@ingka.ikea.com",
      "ownerName" : "Claes Grehall"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "catchpoint_bot_5613db78-0ccc-449b-b0e0-3861eaf11ca8" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Catchpoint Bot",
      "categoryId" : "a9436e96-8d15-4b04-86b6-eae6bd424bbd",
      "conditions" : [
        {
          "name" : [
            "X-IKEA-Catchpoint"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "0cf01823-388d-42b8-b2e0-4ab6bb45a51b"
          ],
          "valueCase" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Catchpoint Bot",
      "notes" : "Accepting Catchpoint bot based on the header X-IKEA-Catchpoint"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "contact_page__enforce_valid_request__time_tracking_1b9779fa-1c94-4fe3-b582-0ffd3b6bb826" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Contact Page - Enforce valid request + Time Tracking",
      "categoryId" : "63f63e02-f113-4a22-8985-08fe6208763a",
      "conditions" : [
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "look-at-CR600363.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Defined within WAF Custom rule 600363"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ecb_bot_badbf49c-bdf4-416e-8214-5a5199874ace" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "ECB BOT",
      "categoryId" : "c6031272-ca63-49e6-b86b-919fe8e512b0",
      "conditions" : [
        {
          "name" : [
            "X-ECB-DPD"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "99TmXziMplEb9c3rvsRrHtdlgqtTe7CXoDrBRbOgDsdhcKXVj0"
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
            "DPD-Ikea-0f36cade-c9da-4502-816c-4e126d221c46"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "ownerEmail" : "mats.johansson3@ingka.ikea.com",
      "ownerName" : "Mats Johansson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "http_referrer_block_896b18f2-3518-4fee-8683-6536b3c29798" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "HTTP referrer block",
      "categoryId" : "9986ae8c-ed4f-484a-9817-b35c1dd8c07a",
      "conditions" : [
        {
          "name" : [
            "Referer"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "https://ikea-status.dong.st/",
            "https://ikea-stock-checker.herokuapp.com/"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "notes" : "Block rougue users who are using clickandcollect data",
      "ownerEmail" : "john.reile@ingka.ikea.com",
      "ownerName" : "John Reile"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "http10_and_missing_ua_9ef48acb-2a4b-45a6-ae81-be889ad0a160" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "HTTP1.0 and Missing UA",
      "categoryId" : "57fff3b7-56bd-48c9-93e6-a01662a11f81",
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "requestProtocolVersionCondition",
          "value" : [
            "HTTP/1.0"
          ]
        },
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderCondition"
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "http10_and_blank_ua_014782cd-540e-4fd3-924d-544b0e205e0d" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "HTTP1.0 and blank UA",
      "categoryId" : "57fff3b7-56bd-48c9-93e6-a01662a11f81",
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "requestProtocolVersionCondition",
          "value" : [
            "HTTP/1.0"
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
            "EMPTY_STRING"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "heimdall_scanner_ingka_942b0276-d39f-475a-9942-fa59e21aa3d4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Heimdall Scanner (Ingka)",
      "categoryId" : "f1018be3-07f5-403b-add8-cfe3fb9eb88d",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Heimdall Scanner (Ingka) - 5a0e9659bd8b768f"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "X-CLIENT-ID"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "49b90d66d5c30aff0e0ad7c3b3a6af79fc7c38d6589c200f9b5553d1ca077a40"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Internal Vulnerability Scanner",
      "ownerEmail" : "shivam.saraswat@ingka.ikea.com",
      "ownerName" : "Shivam Saraswat"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "hotjar_bot_a9659a67-8237-44d8-863a-3b32391b7111" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Hotjar Bot",
      "categoryId" : "652b957a-78a3-471d-aa78-e95bfd3436e5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181003, to Tony Truong",
      "notes" : "Exception requested by SEO Manager, Magnus Dahl 2018113, to Tony Truong"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ikeainternal_3bd228fb-8d60-4c97-a6e3-55a80ec0d5ee" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Ikea-Internal",
      "categoryId" : "18eadbcb-57db-4f2e-8621-7732d1506296",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "180801_IKEAINTERNALIPRANGE"
          ]
        }
      ],
      "description" : "Bots originating from Ikea IP ranges",
      "notes" : "Bots originating from Ikea IP ranges -Part of Epic NGES-2 (NGES-51)",
      "ownerEmail" : "libin.chandy@ingka.com",
      "ownerName" : "Libin Chandy"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ingka_scam_bots_32b1b078-dc76-495a-a68a-2b3d8f3004a7" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Ingka_Scam Bots",
      "categoryId" : "53189a93-5178-4e4f-8142-5e59adcd4ca0",
      "conditions" : [
        {
          "name" : [
            "Cookie"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderCondition"
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "www.ingka.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "ACS-6",
      "ownerName" : "Jakob Dahllback"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "klarna_bot_8cd61ea6-7bbb-4fd8-9fd5-678fe85b847b" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Klarna Bot",
      "categoryId" : "f4dffc40-6336-42eb-811a-932190ffb17e",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "52.19.97.137",
            "54.76.139.184",
            "52.210.158.172",
            "52.16.137.156",
            "34.249.73.10",
            "52.30.234.49",
            "34.242.129.8"
          ]
        }
      ],
      "description" : "Klarna Integration Bot from AWS",
      "ownerEmail" : "daniel.banjanin@ikea.com",
      "ownerName" : "Daniel Banjanin"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2__monsidocom_crawler_124e9f89-50e5-4385-97d0-26c57004ddce" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2 - Monsido.com crawler",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "35.226.117.128"
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
            "Mozilla/5.0 (compatible; Monsidobot/2.2; +http://monsido.com/bot.html; info@monsido.com)",
            "Mozilla/5.0 (compatible; MonsidoUptime/1.0; +http://monsido.com/uptime.html; info@monsido.com)"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "description" : "M2 - Monsido.com crawler",
      "notes" : "SEO Magnus Dahl request that traffic from this bot should be allowed due to request from SEO Specialist  Christina Vazquez in IKEA Canada 20180925\nCDNSD-903: Removed AS number 15169 and added IP and UA strings intead."
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2_local_store_pages__de_e72b7659-ab65-42c2-aa02-7fec2c9b4087" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2 Local Store Pages -- DE",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "lsp-cms-backend/1.0"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "M2 Local Store Pages -- DE",
      "notes" : "Request by Andre.Koch@ggh-mullenlowe.de : We have an AWS hosted server/service which is responsible for extending the M2 Local Store Pages in Germany --Approved by Gustaf Nilsson Kotte"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2_rangedatafragmentconsumer_609d3321-236c-4d38-968a-062fc080585e" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2 Range-Data-Fragment-Consumer",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Range-Data-Fragment-Consumer"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "Range-Data-Fragment-Consumer",
      "notes" : "Range-Data-Fragment-Consumer",
      "ownerEmail" : "jesper.nilsson@jayway.com",
      "ownerName" : "Jesper Nilsson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2_recommendationsfragmentconsumer_60c16bba-7c46-4afa-862e-e38588c8feb5" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2 Recommendations-Fragment-Consumer",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Recommendations-Fragment-Consumer"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "Recommendations-Fragment-Consumer",
      "notes" : "Recommendations-Fragment-Consumer",
      "ownerEmail" : "jesper.nilsson@jayway.com",
      "ownerName" : "Jesper Nilsson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2iowsintegratorcatalog10_dc7e35de-3d8c-4927-b809-64bf576affa3" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2-IOWSIntegrator-Catalog/1.0",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "M2-IOWSIntegrator-Catalog/1.0"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "M2-IOWSIntegrator-Catalog/1.0",
      "notes" : "M2-IOWSIntegrator-Catalog/1.0",
      "ownerEmail" : "albert.bertilsson@ikea.com",
      "ownerName" : "Albert Bertilsson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2iowsintegratorgenericproduct10_8e5f5699-a5f7-4684-8f03-147f0493531a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2-IOWSIntegrator-GenericProduct/1.0",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "M2-IOWSIntegrator-GenericProduct/1.0"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "M2-IOWSIntegrator-GenericProduct/1.0",
      "notes" : "M2-IOWSIntegrator-GenericProduct/1.0",
      "ownerEmail" : "albert.bertilsson@ikea.com",
      "ownerName" : "Albert Bertilsson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2iowsintegratorproductimagelookup_e162eb07-b096-4d05-a47c-40bfe7f00ec0" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2-IOWSIntegrator-ProductImageLookup",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "M2-IOWSIntegrator-ProductImageLookup"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "M2-IOWSIntegrator-ProductImageLookup",
      "ownerEmail" : "albert.bertilsson@ikea.com",
      "ownerName" : "Albert Bertilsson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "m2owferedirectservice_731f9a28-5a00-472b-9954-b839815fced9" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "M2-OWFE-REDIRECT-SERVICE",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
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
            "M2-OWFE-REDIRECT-SERVICE"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "M2-OWFE-REDIRECT-SERVICE",
      "notes" : "ACTION Allow. Requested by Gustaf Nilsson Kotte and Richard Andersson (Zero Chaos) 20190528"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "mobilefirst_ibm_ac880506-1033-455a-a8b0-208e4690da6e" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MobileFirst IBM",
      "categoryId" : "b7711078-708e-4bef-b440-c38aafe761b1",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Apache-HttpClient/4.1.2 (java 1.5)"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "159.122.11.218",
            "159.122.11.219",
            "159.122.11.220"
          ]
        }
      ],
      "description" : "MobileFirst IBM SoftLayer cloud",
      "notes" : "159.122.11.218 159.122.11.219 159.122.11.220\nApache-HttpClient/4.1.2 (java 1.5)"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "monsido_bot_crawling_2033b080-d3ca-45fa-a4ad-8897346fd286" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Monsido BOT crawling",
      "categoryId" : "26ba67b6-17a8-4e6b-8eb3-0a8ea0f960e1",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "35.226.117.128"
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
            "Mozilla/5.0 (compatible; MonsidoUptime/1.0; +http://monsido.com/uptime.html; info@monsido.com)",
            "Mozilla/5.0 (compatible; Monsidobot/2.2; +http://monsido.com/bot.html; info@monsido.com)"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "notes" : "Yoan Halim, Web Specialist, Strategy \u0026 Planning in Canada asked to whitelist crawler to crawl on www.ikea.com and ww8.ikea.com 2019-05-15;\nCDNSD-903: Replaced AS number with IP and UA instead."
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpoint_proxies_baiduspider_bots_102a714f-30b1-46ce-a045-c0a67f012437" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint Proxies Baiduspider BOTs",
      "categoryId" : "bee155df-4933-4d7e-983e-3b8e61cb19d5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "209.18.112.38"
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
            "*Baiduspider*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "The 209.18.112.38 ClientIP + User-agent including Baiduspider"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpoint_proxies_bingbot_8363f415-df3c-4346-b74c-958157702ad6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint Proxies Bingbot",
      "categoryId" : "bee155df-4933-4d7e-983e-3b8e61cb19d5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "209.18.112.38"
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
            "*bingbot*",
            "*msnbot*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "The 209.18.112.38 ClientIP + User-agent including bingbot/msnbot"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpoint_proxies_facebook_bots_a5c83e5e-6b74-464c-81ac-e2f5504a66b1" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint Proxies Facebook BOTs",
      "categoryId" : "bee155df-4933-4d7e-983e-3b8e61cb19d5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "209.18.112.38"
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
            "*facebookexternalhit*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "The 209.18.112.38 ClientIP + User-agent including facebookexternalhit"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpoint_proxies_googlebot_211ac995-fc22-4b63-b67c-4d144abda699" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint Proxies Googlebot",
      "categoryId" : "bee155df-4933-4d7e-983e-3b8e61cb19d5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "209.18.112.38"
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
            "*Googlebot*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "The 209.18.112.38 ClientIP + User-agent including Googlebot"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpoint_proxies_yahoo_bot_73873ab6-5fe2-40d5-9356-a226cbdf49ef" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint Proxies Yahoo bot",
      "categoryId" : "bee155df-4933-4d7e-983e-3b8e61cb19d5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "209.18.112.38"
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
            "*Yahoo!*Slurp*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "The 209.18.112.38 ClientIP + User-agent including Yahoo!"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpoint_proxies_yandexbot_bots_f551dbfc-a0c4-4635-9152-7047b2099349" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint Proxies YandexBot BOTs",
      "categoryId" : "bee155df-4933-4d7e-983e-3b8e61cb19d5",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "209.18.112.38"
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
            "*YandexBot*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "The 209.18.112.38 ClientIP + User-agent including YandexBot"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "motionpointukrackspaceallowed_c2df1db0-54a3-45ca-8ce5-c32a30c407a6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MotionPoint-UK-Rackspace-Allowed",
      "categoryId" : "dde3de01-3e29-4888-bbcd-475713357ecb",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "146.177.54.0/23"
          ]
        },
        {
          "name" : [
            "X-IKEA-MOTIONPOINT-PROXY"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "true"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "To allow only required ips of UK Rackspace for MotionPoint service",
      "notes" : "To allow only required ips of UK Rackspace for MotionPoint service",
      "ownerEmail" : "libin.chandy@ingka.com",
      "ownerName" : "Libin Chandy"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "mozilla40_compatible_msie_60_windows_nt_51_net_clr_114322_sitecheck_abab900c-3b6f-430b-b84f-69c04d270fa7" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322) (Site-Check)",
      "categoryId" : "1d7d8fbf-23e9-4c54-9868-538411e561ff",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322) (Site-Check)"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "http://site-check.herokuapp.com/site.php?cc=nl\u0026lc=nl\u0026step=2",
      "ownerEmail" : "albert.bertilsson@ikea.com",
      "ownerName" : "Albert Bertilsson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "one_trust_cookie_crawler_53fdaafb-c4d8-428d-94bf-0e396a4bc797" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "One Trust Cookie crawler",
      "categoryId" : "4c7e5482-a24b-474d-898e-7631957b115f",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "40.127.147.91",
            "40.127.145.2",
            "40.127.147.198",
            "40.127.145.41",
            "40.127.148.21",
            "40.127.148.47",
            "40.127.149.222",
            "40.127.149.238",
            "40.127.150.37",
            "40.127.150.47",
            "20.54.106.120/29"
          ]
        }
      ],
      "notes" : "CDNSD-1461: Magnus Dahl requested to add more IP's and removing 40.85.82.207."
    }
  )
}

resource "akamai_botman_custom_defined_bot" "onetrust_scanner_04b9293d-98bd-4495-830d-5b79f3f181d1" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "OneTrust scanner",
      "categoryId" : "183980fc-74c2-482a-90a1-0aebfcb5efb0",
      "conditions" : [
        {
          "name" : "ingkaonetrust",
          "nameCase" : true,
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestCookieCondition"
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "40.127.147.91",
            "40.127.145.2",
            "40.127.147.198",
            "40.127.145.41",
            "40.127.148.21",
            "40.127.148.47",
            "40.127.149.222",
            "40.127.149.238",
            "40.127.150.37",
            "40.127.150.47"
          ]
        }
      ],
      "description" : "Used by One Web Frontend to scan m2.cte.ikeadt.com",
      "notes" : "Requested by Gustaf Nilsson Kotte 2019-05-24, CDNSD-1461; Magnus Dahl requested to add more IP addresses. CDNSD-1461: Removing 40.85.82.207"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_aa_b392bd61-4dc8-41d8-bcbd-367c649048cd" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup AA",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/f473efc6f4c6706fcdb7cef9866834d6)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for AA",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/aa/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_aeen_48f867c8-f0cb-4c79-aab4-e9887424ad87" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup AE/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/e7ac2f4096ed2e887e19859fcffe2af3)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for AE/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ae/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_at_ef2dcf0b-eef6-4f5e-9d5e-3a3ea980e108" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup AT",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/d0f3f52d52f084262fd90df841a70b43)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for AT",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/at/de/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_au_c3182072-7978-486c-826f-4b7aa6163dca" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup AU",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/B24DB7A4B3C7507CD58EC7BFFF2EA670)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20180903, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/au/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_befr_28158c8f-b58c-4446-b901-ed1ce5309ca4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup BE/FR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/0321dc6de0968b30cbf84d78a6deaa26)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for BE/FR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/be/fr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_benl_e025b108-8c8a-419f-9d80-6c78124c49d4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup BE/NL",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/ae72fea16112eef98f491a8a12821f83)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for BE/NL",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/be/nl/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_bg_595d3157-9a99-4a24-a91f-f9b7ac7424a4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup BG",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/a50943827b792b0651e81b4502967b45)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for BG",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.bg/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_caen_1a9bf9ff-0caf-4edd-9491-7228c4c7a5cf" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CA/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/80d860fac37c0c3c111f74c4c18f4191)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CA/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ca/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_cafr_4e1e2cad-3fe5-43aa-820b-fdeecffabe06" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CA/FR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/8d82ddc24b3db41b2002901332623ccd)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CA/FR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ca/fr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_chde_976e2add-d5b1-4079-8564-2516fbefd0e2" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CH/DE",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/d944261446fab774cd6a7e94d9a66cdd)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CH/DE",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ch/de/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_chfr_57f91692-9cc7-4854-88fb-0507921c02a2" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CH/FR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/cb0530dad5cee2748d39eff68c5db8bc)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CH/FR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ch/fr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_chit_6cd5a1d0-9324-490f-8cbf-33121e056c43" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CH/IT",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/7dbe00f49251e3d5690bfcd5ee6784b0)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CH/IT",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ch/it/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_cnen_e5e66ce3-7295-4f4c-8ced-08c65c751891" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CN/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/ba0cee1a33ff66cfa362fe30471425f8)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CN/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.cn/cn/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_cnzh_9943c3c2-5bda-4c6e-a40d-081f3181900e" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CN/ZH",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/1b7936fd01e022208a47e6ee2088b50b)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CN/ZH",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.cn/cn/zh/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_cy_63958a81-1d2d-462d-8259-c4dbc1b3ccd4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CY",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/a1f31be56649cb6c16437b8d41c38928)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CY",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com.cy/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_czcs_3cf8fe0b-f584-424a-82a2-1779d93eda66" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup CZ/CS",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/6395d2ae3b3e24a81327e4823005ae5a)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for CZ/CS",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/cz/cs/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_dede_1af13004-b399-4471-a14c-cb52351f0c52" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup DE/DE",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/c2715777d0bddbb7cc1fb9c8994b5070)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for DE/DE",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/de/de/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_dkda_8bafc82b-bedf-445a-b6f5-4790c371cf30" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup DK/DA",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/279e2fb129de12c30d1da5d3a72820a6)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for DK/DA",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/dk/da/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_do_65949b8f-2d19-46e4-a24a-62ba91d44fb2" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup DO",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/51674eb41347e4545501040d085908c6)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for DO",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com.do/santodomingo/desktop/es_do/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_egen_ab769051-fad1-41d3-bd59-06ad630b805c" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup EG/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/0da0c55a0aa912f952694706b01ddf18)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for EG/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/eg/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_esen_34303934-a4b7-41d6-867a-a48e4093d468" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup ES/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/bd2d6357952916a532dfb6f32c5422c7)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for ES/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/es/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_eses_515f8bfd-951e-49a6-baa7-4828011a6e54" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup ES/ES",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/c1a69f01decae92af1f2c099baba11a8)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for ES/ES",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/es/es/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_fifi_c8eaaac3-0c49-4a42-ac44-c4050bd4bec2" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup FI/FI",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/cb5625dcd9286808d474b27e22b1885f)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for FI/FI",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/fi/fi/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_frfr_aae27cc8-5970-4872-b62a-79ae656c9d15" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup FR/FR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/96c01c1a3ffa74d70df7612b31583186)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for FR/FR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/fr/fr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_gben_fbb8ed82-c1b2-485b-ba7d-f17233fe624d" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup GB/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/77fb88306fb86495b3ee7bafbd827447)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for GB/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/gb/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_gr_bb6a77f2-a622-497d-af62-6fb9219a6a71" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup GR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/541a19c8d491824217a4e88df2a0dbec)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for GR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.gr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_global_deepcrawl_74f99823-cdff-4923-94b5-a7775aefac98" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup Global deepcrawl",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (deepcrawl/b0acb3c0395f68b8ec38a87ab39be09e)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for Global deepcrawl",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_global_screaming_frog_eb01ec61-4107-444a-bbb4-63dd564ad41f" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup Global screaming frog",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (screamingfrog/93dc0f9edfb6cba144737960adaae717)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for Global screaming frog",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_hken_9f5f6567-89e6-4893-80af-cd3911784c0a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup HK/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/c21523c70ad8f60a3a70dcb4470981b4)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for HK/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/hk/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_hkzh_8274be9b-4384-45dc-a193-9e81fefaabe0" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup HK/ZH",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/82f7b53cc8c3e562a4f6b74670030cda)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for HK/ZH",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/hk/zh/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_hrhr_8049e8a5-4460-4fc8-8655-1e6fc1af8f82" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup HR/HR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/95651eab3d13f63b2ddb8634d0fdc9a2)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for HR/HR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/hr/hr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_huhu_d59d2aa0-a77d-4058-bb81-de626c28cd4a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup HU/HU",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/0938a88ba17fc3867497d5335264dc9e)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for HU/HU",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/hu/hu/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_iden_fbccdfb3-a3f2-454a-b142-7afc85d044aa" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup ID/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/f85b71aafa738c94603a4214dacf48da)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for ID/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/id/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_idin_ca46287b-d01a-4502-84b9-b76a95d08ace" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup ID/IN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/ffb4a3ad62fc4a22481a838a1490fd33)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for ID/IN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/id/in/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_ieen_2029cfac-f41f-42a8-bdff-99468868da3a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup IE/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/1cb218b7a64d191682a7ac68d164f9bc)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for IE/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ie/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_inen_9b5500de-2b99-4e23-83f4-c34ad4d9818b" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup IN/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/32f10b9fb9cc196642c919fa1e868e26)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for IN/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/in/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_is_00d7ce65-5222-41cf-a4b8-f50426ad9a76" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup IS",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/1264c5904411e8f17f58f47a98105737)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for IS",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.is/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_itit_53820527-8cf2-41a8-adcf-0155b6e7e6ea" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup IT/IT",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/e6929e99dadd48d78dc2cad11003aad0)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for IT/IT",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/it/it/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_joen_9408b744-a9f9-45d7-8c4b-002b97f6079a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup JO/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/fdd9f67086e8e50a32d1c7d7010676d2)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for JO/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/jo/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_jpen_c94e358a-22fb-43ce-98fa-9d670e70b898" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup JP/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/41ac8231af44cfb88d48ea1dcd023b3e)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for JP/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/jp/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_jpja_0be958b5-ffcd-4319-be3f-d31056f5c6aa" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup JP/JA",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/850130b62621b76576518fb87635442c)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for JP/JA",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/jp/ja/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_kren_e65c8556-67ea-4530-b9aa-b3f0f1d767ee" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup KR/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/3f3a234543330d2c82b06a38e2ecc41c)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for KR/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/kr/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_krko_b2acc1ca-8a6d-4c6b-923a-0154672f35fd" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup KR/KO",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/a2e60edc6d3159a681d89f916b05e9ed)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for KR/KO",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/kr/ko/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_kwen_d3f0d017-0f72-48ba-8066-683c09f05da6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup KW/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/d46736f41ba643514983d2b4845d4b57)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for KW/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/kw/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_ltlt_f3c8c9bc-6746-4b9d-84cd-be1012854359" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup LT/LT",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/30fac1ab002ac780e70d777494632928)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for LT/LT",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/lt/lt/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_mafr_c117703e-9e8f-4df1-9813-75b36e5d4dff" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup MA/FR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/565c0afe9dd3f62d0a4e24efef6db814)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for MA/FR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ma/fr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_myen_e14cf3c6-aa23-44be-b98e-77155cfd5361" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup MY/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/4de09fd812c070a72200f2f792b26548)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for MY/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/my/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_myms_70121563-a826-427f-9633-ab5da51173f0" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup MY/MS",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/7bde315a8c4ae5f43444e9d7d979ecc5)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for MY/MS",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/my/ms/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_nlnl_cdef8f97-c30b-4938-90f6-2658715e8be4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup NL/NL",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/56c5fc4b457f238fd85a488df104a1ce)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for NL/NL",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/nl/nl/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_nono_fcefdbf7-5686-46a0-8e2a-15d82bd1e051" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup NO/NO",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/28f74ffed8fb005e0404c0ce9ffed6ec)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for NO/NO",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/no/no/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_plpl_ee2594e5-68ff-43d9-8177-187fa78058bf" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup PL/PL",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/c26a5f00beb80fb487f062ad54bd2f92)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for PL/PL",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/pl/pl/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_pten_049b8945-1f64-4cef-af29-3c9008607691" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup PT/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/10591d8e432c72a80a6aafb0a90b70d2)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for PT/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/pt/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_ptpt_39b53491-8ee9-43c9-9b97-65e23e1ae951" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup PT/PT",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/992d2c8459a837707fb086096b5a9ad8)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for PT/PT",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/pt/pt/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_qaen_278b3f0f-2421-485a-9a22-a462570b72c8" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup QA/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/fee987b3fc9e3f1581c79c82cf9a5290)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for QA/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/qa/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_roro_bd6ca41c-9ceb-456d-9c19-070eff5547e5" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup RO/RO",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/c63fa764cb290c680eede51863288715)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for RO/RO",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ro/ro/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_rs_0880a730-e9f1-4859-b282-229f33802782" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup RS",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/29cdf7a6349dd9d7d615eaeff811d86d)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for RS",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://ikea.rs/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_rssr_c97db770-dec3-4e47-bb8c-e9db5fc8c41a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup RS/SR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/1083780c0a896de9d35daced1d16d1da)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for RS/SR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/rs/sr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_ruru_e733f841-c1e9-4f08-9766-1b213717c591" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup RU/RU",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/f489edd78652eea77915b3989fd94bc4)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for RU/RU",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/ru/ru/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_saen_7c6e97d6-5b24-4cf8-a90b-14f392b3fba5" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup SA/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/a4c6cb794adfefbe39a20568bdc64b1a)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for SA/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/sa/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_sesv_26f2c2ee-54ee-4daf-9433-d2ec013c1375" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup SE/SV",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/2cae95b89adacd216b7f9cf36736c258)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for SE/SV",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/se/sv/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_sgen_f554e148-d885-487e-9fa6-3ea536e81685" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup SG/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/cb2703e0b1f414422cd534b0b41cce53)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for SG/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/sg/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_sksk_b8b5dd1f-9750-4616-937d-7fc03487ddd1" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup SK/SK",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/7c498f8744df115111956c285d9baf59)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for SK/SK",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/sk/sk/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_then_51c021c9-f646-46e6-b21b-d712cd8481f4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup TH/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/9fbbb5c1d35bdef8e396ab4368262209)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for TH/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/th/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_thth_fc7ced7d-e0fc-4cce-a3b7-a66427cb0fcb" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup TH/TH",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/b9f002637359265e78e61b5a91833bd9)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for TH/TH",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/th/th/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_tr_e5b59f3b-d20b-40ff-8a82-c07e4dfbaf0a" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup TR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/127fd8dbd33902593dbd3cc8eed1d49c)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for TR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com.tr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_twzh_9d27ad3e-3653-42e4-8b65-75efcb613bdf" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup TW/ZH",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/788179fce68ad2c66e0a5031041bc928)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for TW/ZH",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/tw/zh/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_uk_3da54650-25ca-409e-b8ba-a99be4c23dc9" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup UK",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/B24DB7A4B3C7507CD58EC7BFFF2EA6UK)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for UK",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181003, to Tony Truong"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_usen_d9fdd764-73de-4e0e-a049-306b88bf6eba" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup US/EN",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/b4118ea36f4010af71eb16fb936cd0f0)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for US/EN",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.com/us/en/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_coil_75be5af7-f71f-482e-9bda-7f5174d41702" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup co.il",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/a30bd19b26c35ff3f8fe5c291dcaa1e7)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for co.il",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://www.ikea.co.il/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_frikeacom_mafr_ca736f0b-57a5-47ef-bc38-04878f04ad1f" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Productsup fr.ikea.com MA/FR",
      "categoryId" : "5d4f7881-d522-4f0b-ab00-ab6de7255430",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/1.1.4 (productsup.io/70983f1a4bf6af5c305d7b13ac0cf74b)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Productsup Crawler for fr.ikea.com  MA/FR",
      "notes" : "Exception requested by SEO Manager, Arnoldo Cabrera 20181029, to Tony Truong",
      "ownerUrl" : "https://fr.ikea.com/ma/fr/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "publicera_bot_script_00813f6c-55f6-4b59-b12b-d7a950cf1d57" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Publicera BOT Script",
      "categoryId" : "90e51013-ad80-4e1b-9250-0a17cc150cbd",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "editorial-publicera-bot-site-visit"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "CDNSD-1538",
      "ownerName" : "Andreas Andersson"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "publicera_content_crawler_4e242d76-536e-493f-a6cd-7e1d469d1c94" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Publicera Content Crawler",
      "categoryId" : "eb782c6b-53d1-4fbe-8996-4f24706045a8",
      "conditions" : [
        {
          "name" : [
            "X-PubliceraContentCrawler-IKEA"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "e03ada24-b261-4901-9541-020e8a4f1f0c"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        }
      ],
      "description" : "Crawler for publicera pages in m2|www.ikea.com and dev environments.",
      "notes" : "Asked by Gustav Nilsson Kotte and Jonas Stenberg @Jayway 2019-05-24."
    }
  )
}

resource "akamai_botman_custom_defined_bot" "temp_quick_fix_47f9436c-bdbe-4466-8aff-e694b4b7700e" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Temp quick fix",
      "categoryId" : "74de858c-75ab-4854-a9ed-64ae76d31982",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "61317"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ufxhomepage__fastly_cdn_apis_15da0432-5000-4ef3-974f-1a609946cf9b" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "UFX/Homepage - Fastly CDN APIs",
      "categoryId" : "aeb1cd30-99d6-431f-b9b4-0824c9a72b76",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "HRI/SMC-585516"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "172132_FASTLYCDNIPLIST"
          ]
        },
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "icow.accounts.ingka.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Disable BM cookies for Fastly API to API calls",
      "ownerEmail" : "johan.li@ingka.com",
      "ownerName" : "Johan Li"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "igift_bmp_bypass_japan__korea_d3f18709-4654-43a0-98c4-af539a7398dc" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "igift BMP bypass Japan \u0026 Korea",
      "categoryId" : "4a0f4413-c5e0-4c1d-9d59-928ffd5cc78f",
      "conditions" : [
        {
          "name" : [
            "Host"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "igift.test.ingkadt.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "175507_IGIFTBMPBYPASSJAPANKO"
          ]
        }
      ],
      "description" : "igift BMP bypass Japan \u0026 Korea",
      "notes" : "mateus.oliveira@ingka.ikea.com, aaron.long1@ingka.ikea.com"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "iows_blocked_uas_ecae8f17-fa3c-47d5-8c60-0bd6f53a8c76" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "iows blocked UA's",
      "categoryId" : "4b318a52-c5a0-4624-aa5f-500d00e338b0",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "45090",
            "132199"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "k2fragmentsfetcher_1ab5669e-9e07-47e2-99ee-23159e5f035f" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "k2-fragments-fetcher",
      "categoryId" : "e3ec85d5-5c5c-43cc-a347-0716ec9db3c2",
      "conditions" : [
        {
          "name" : [
            "x-auth"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Phoidu6eirohquaelookei1ri9niz4ha"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "176.119.32.109",
            "176.119.56.253",
            "176.119.62.168"
          ]
        }
      ],
      "notes" : "Jira ticket CDNSD-466: need to allow request from this tool in order to work in Poland.",
      "ownerEmail" : "aleksandra.sapoznikow-bystry@ikea.com",
      "ownerName" : "Aleksandra Sapo?nikow-Bystry"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "planowaniekuchniserverside_ab547718-7d76-4958-9c82-efedb491e0e2" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "planowaniekuchni-serverside",
      "categoryId" : "e5235d40-34e5-4e0b-a324-4d6f1cbcaafd",
      "conditions" : [
        {
          "name" : [
            "X-BMBP"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "f5e40c06-e616-4ed3-bbe7-96edbb32c053"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        },
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "82.214.136.28",
            "54.38.193.124",
            "89.70.159.106"
          ]
        }
      ],
      "description" : "CDNSD-474",
      "notes" : "Created according to request by Gabriel Ignatiuk with approval from Aleksandra Sapoznikow-Bystry.",
      "ownerEmail" : "aleksandra.sapoznikow-bystry@ikea.com",
      "ownerName" : "Aleksandra Sapoznikow-Bystry"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "rrdeasyling_7dfaab9a-69cf-4fc4-9c97-76036e3996bf" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "rrd-easyling",
      "categoryId" : "1eb94f73-0724-4b57-8496-6797e43d99c8",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "146.148.21.97"
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
            "*rrd-easyling*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Ikea Spain is using this bot for scanning their site daily.",
      "notes" : "Ikea Spain is using this bot for scanning their site daily. Magnus Dahl has approve to whitelist the traffic from this bot",
      "ownerName" : "www.ikea.com/es/es",
      "ownerUrl" : "www.ikea.com/es/es"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "signup_family_b03417b0-428d-4d01-857e-c1d355c6f986" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "signup family",
      "categoryId" : "13bda931-bd79-4825-8560-4123f37e0bbc",
      "conditions" : [
        {
          "name" : [
            "Consumer"
          ],
          "nameWildcard" : false,
          "positiveMatch" : false,
          "type" : "requestHeaderCondition",
          "value" : [
            "MAMMUT"
          ],
          "valueCase" : true,
          "valueWildcard" : false
        }
      ]
    }
  )
}

