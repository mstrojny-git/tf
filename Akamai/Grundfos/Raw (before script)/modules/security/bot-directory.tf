resource "akamai_botman_custom_bot_category" "grundfos_bots_d7b818c6-d795-4d88-b270-76236399cacf" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Grundfos Bots",
      "description" : "A place for all our internal bots"
    }
  )
}

resource "akamai_botman_custom_bot_category" "grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Grundfos Known Bots"
    }
  )
}

resource "akamai_botman_recategorized_akamai_defined_bot" "screaming_frog_seo_spider_0732aa42-0ca0-48e1-8c1d-c5977cf6920a" {
  config_id   = local.config_id
  bot_id      = "0732aa42-0ca0-48e1-8c1d-c5977cf6920a"
  category_id = akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id
}

resource "akamai_botman_recategorized_akamai_defined_bot" "sprinklr_1c1f5953-73cd-4780-9453-75dfeb41b267" {
  config_id   = local.config_id
  bot_id      = "1c1f5953-73cd-4780-9453-75dfeb41b267"
  category_id = akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id
}

resource "akamai_botman_recategorized_akamai_defined_bot" "gtmetrix_2efecef1-779d-46f4-8ed7-1f4a69212637" {
  config_id   = local.config_id
  bot_id      = "2efecef1-779d-46f4-8ed7-1f4a69212637"
  category_id = akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id
}

resource "akamai_botman_recategorized_akamai_defined_bot" "ahref_86a54f63-f09d-462c-9ff7-503f0e02702d" {
  config_id   = local.config_id
  bot_id      = "86a54f63-f09d-462c-9ff7-503f0e02702d"
  category_id = akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id
}

resource "akamai_botman_recategorized_akamai_defined_bot" "semrushbot_ba37ad77-e3ca-4a43-b896-802200dca000" {
  config_id   = local.config_id
  bot_id      = "ba37ad77-e3ca-4a43-b896-802200dca000"
  category_id = akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id
}

resource "akamai_botman_recategorized_akamai_defined_bot" "siteimprove_c91d2d26-c186-4fa5-8e6e-013f730840c5" {
  config_id   = local.config_id
  bot_id      = "c91d2d26-c186-4fa5-8e6e-013f730840c5"
  category_id = akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id
}

resource "akamai_botman_custom_bot_category" "grundfos_unknown_bots_d825c7ab-66e3-4ca6-88b7-4536f9e44397" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Grundfos Unknown bots"
    }
  )
}

resource "akamai_botman_custom_bot_category" "monitoring_and_health_check_tools_5d2f0fd4-0ed5-45b4-841a-d08a3591d6c1" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Monitoring and Health Check tools"
    }
  )
}

resource "akamai_botman_custom_bot_category" "newrelicsyntheticsmonitor_9ca4a77f-4083-428f-aac0-fc0f0eae280c" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "NewRelicSyntheticsMonitor"
    }
  )
}

resource "akamai_botman_recategorized_akamai_defined_bot" "newrelicsyntheticsmonitor_7ffd23f8-658d-4ac7-87b8-67a3ce06b5bc" {
  config_id   = local.config_id
  bot_id      = "7ffd23f8-658d-4ac7-87b8-67a3ce06b5bc"
  category_id = akamai_botman_custom_bot_category.newrelicsyntheticsmonitor_9ca4a77f-4083-428f-aac0-fc0f0eae280c.category_id
}

resource "akamai_botman_custom_bot_category_sequence" "custom_bot_category_sequence" {
  config_id    = local.config_id
  category_ids = [akamai_botman_custom_bot_category.grundfos_known_bots_c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa.category_id, akamai_botman_custom_bot_category.grundfos_unknown_bots_d825c7ab-66e3-4ca6-88b7-4536f9e44397.category_id, akamai_botman_custom_bot_category.grundfos_bots_d7b818c6-d795-4d88-b270-76236399cacf.category_id, akamai_botman_custom_bot_category.monitoring_and_health_check_tools_5d2f0fd4-0ed5-45b4-841a-d08a3591d6c1.category_id, akamai_botman_custom_bot_category.newrelicsyntheticsmonitor_9ca4a77f-4083-428f-aac0-fc0f0eae280c.category_id]
}

resource "akamai_botman_custom_defined_bot" "aemintegrationssand_95d08184-9a68-4f8f-a881-e625f263391e" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "AEM-IntegrationsSAND",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "1283_MICROSOFTWINDOWSAZUREDAT"
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
            "aem-integration-*/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "grundfos-secret"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "FWCvujxgt1fyg1egb"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "AEM integrations user-agent\nRFC0121715",
      "ownerEmail" : "aem_platform_team@grundfos.onmicrosoft.com",
      "ownerName" : "AEM Platform team"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "aemintegrationstest_63b84b0b-84b4-4246-bb83-4fc51898cb96" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "AEM-IntegrationsTEST",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "1283_MICROSOFTWINDOWSAZUREDAT"
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
            "aem-integration-*/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "grundfos-secret"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "QJA0nhcqmg9qgr3zxw"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "AEM integrations user-agent\nRFC0121715",
      "ownerEmail" : "aem_platform_team@grundfos.onmicrosoft.com",
      "ownerName" : "AEM Platform team"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "aembot_0738ebcb-155e-49df-b3ac-61ae3b34f8b6" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "AEMBot",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "20.86.49.203",
            "20.86.8.176"
          ]
        }
      ],
      "description" : "AEM bot",
      "notes" : "AEM team Need to configure there calls with a correct user-agent and give us more info, so we can make this rule better"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "aemtest_436dea4b-bf55-44e2-a372-88fd97c1a47c" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "AEMTest",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "AEMTest/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "ownerName" : "Jakob Rosenlund // Linux ops"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "atlassiandomainclaimservice_78567423-8622-40ac-9097-f12fcd9ac438" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "AtlassianDomainClaimService",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "AtlassianDomainClaimService"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "HOST"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "www.grundfos.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16509"
          ]
        }
      ],
      "description" : "Bot that verify the Grundfos.com Domain for Atlassian cloud"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "by_ip_2aeeddb5-349f-468f-bdb0-1b247f4b43d5" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "By IP",
      "categoryId" : "d825c7ab-66e3-4ca6-88b7-4536f9e44397",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "79.134.143.219",
            "216.218.147.202"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "cookiebot_637762a9-af5b-4b5c-859a-740249641e6c" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "CookieBot",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; Cookiebot/1.0; +http://cookiebot.com/) Chrome/*.*.*.* Safari/537.36",
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; Cookiebot/1.0; +http://cookiebot.com/) Chrome/*.*.*.* Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "206735_COOKIEBOTNWLIST"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "copy_of_aemintegrationsprod_639b999c-9056-4d52-beb2-35e84e9f8f4e" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Copy of AEM-IntegrationsPROD",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "1283_MICROSOFTWINDOWSAZUREDAT"
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
            "aem-integration-*/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "grundfos-secret"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "xkmXNG9gpa0qcj5ufv"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "AEM integrations user-agent\nRFC0121715",
      "ownerEmail" : "aem_platform_team@grundfos.onmicrosoft.com",
      "ownerName" : "AEM Platform team"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "customer_identity_user_support_tool_bebc1f39-d063-4193-a709-30ac5aa888ae" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Customer Identity (user support tool)",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "UST/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : [
            "grundfos-secret"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "8YGTZdWzpprNkMGVHsrh"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "CustomerIdentityLeads@grundfos.onmicrosoft.com",
      "notes" : "RFC0120370",
      "ownerName" : "Customer Identity Team \u0026 Leads"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "gpi_integration_af1f1b8c-543f-499a-8281-e7b5925dd57d" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "GPI integration",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "name" : [
            "grundfoss-secret"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "fT*ry$N5Qw\u00263KgjgSt4^G3frfdto3iz$"
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
          "type" : "requestHeaderCondition",
          "value" : [
            "net.grundfos.com"
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
            "axios/*",
            "curl/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "net.grundfos.com GPI call",
      "ownerEmail" : "ksonielsen@grundfos.com",
      "ownerName" : "Kim Søby Nielsen"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "grundfos_external_ips_3a10cb21-0bc7-48d3-a3d3-36c10d7ee066" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Grundfos External IPs",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "127745_GRUNDFOS"
          ]
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "31131",
            "8075"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "hotjarcom_83007776-e8b3-4e81-a713-d94d8e6dc78d" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Hotjar.com",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "18.203.176.135",
            "18.203.61.76",
            "52.17.197.221"
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
            "*Hotjar Version/*",
            "*Hotjar Chrome/*"
          ],
          "valueCase" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Allow Hotjar to generate heatmaps on our site",
      "notes" : "Requested by Steffen Bachmand Christensen",
      "ownerName" : "Steffen Bachmand Christensen"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "linuxops_monitoring_10689ffe-0ed2-438f-8e40-a5458c69a181" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "LinuxOps Monitoring",
      "categoryId" : "5d2f0fd4-0ed5-45b4-841a-d08a3591d6c1",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "193.3.10.231"
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
            "LinuxOPS/Monitoring *"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Linux Operations monitor tool",
      "ownerEmail" : "robertnielsen@grundfos.com",
      "ownerName" : "Robert Nedergaard Nielsen",
      "ownerUrl" : "https://grafana.dkxymon02.emea.group.grundfos.com/"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "nmap__useragent_9fc71a1f-7848-4092-9fd3-a67ea5713f16" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "NMap - User-agent",
      "categoryId" : "d825c7ab-66e3-4ca6-88b7-4536f9e44397",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (compatible; Nmap Scripting Engine; https://nmap.org/book/nse.html)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "productsup_d1df33ad-8c73-4cff-a0b3-67f04d337e91" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "ProductsUp",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "200249"
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
            "net.grundfos.com"
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
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070802 SeaMonkey/* (productsup.io/crawler)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "ownerEmail" : "asafadi@grundfos.com",
      "ownerName" : "Amjad Al Safadi"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "search_2392e27c-3e9b-47c5-9788-92071f1f185c" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Search",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "grundfos-search-crawler"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "127745_GRUNDFOS",
            "1283_MICROSOFTWINDOWSAZUREDAT"
          ]
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "8075",
            "31131"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "site_crawler__search__useragent_block_3723ee28-370c-4f2f-adcf-cc4c2cbc2bb3" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Site crawler / Search - User-Agent block",
      "categoryId" : "d825c7ab-66e3-4ca6-88b7-4536f9e44397",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Firefox/31.0",
            "yaanibot"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "site_crawler__searcher_f09626e0-48be-4635-b474-34cfe2d8d6d8" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Site crawler / Searcher",
      "categoryId" : "d825c7ab-66e3-4ca6-88b7-4536f9e44397",
      "conditions" : [
        {
          "checkIps" : "BOTH",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "139.215.3.42",
            "139.215.3.66"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "system_health_dashboard_faea724a-006f-4a42-b496-8ce03d63e16d" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "System Health Dashboard",
      "categoryId" : "c7e59f6c-f0d0-4ccc-bc2b-9f7a907062fa",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "System Health Dashboard"
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
          "type" : "requestHeaderCondition",
          "value" : [
            "net.grundfos.com",
            "grundfos.com",
            "app.grundfos.com",
            "product-selection.grundfos.com",
            "www.grundfos.com"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "193.3.10.231"
          ]
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "31131"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "visualphase_3ef45605-0c29-4871-bcf6-203b614835d4" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "VisualPhase",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "VisualPhase/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "1283_MICROSOFTWINDOWSAZUREDAT"
          ]
        }
      ],
      "description" : "Danny stærk will know who to contact",
      "ownerName" : "Danny Stærk"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "wms_365ec561-1a03-4129-bf8a-9219b2f78e80" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "WMS",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "1283_MICROSOFTWINDOWSAZUREDAT"
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
            "net.grundfos.com"
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
            "WMS/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "ownerName" : "Janus Skallgård"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "grundfosconnect_d267f6b0-0750-4bf0-9b21-1b452111c4b2" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "grundfos-connect",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "grundfos-connect/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "20.93.171.64/28"
          ]
        }
      ],
      "description" : "Grundfos-connect test against cdn.grundfos.com",
      "ownerEmail" : "tdjensen@grundfos.com",
      "ownerName" : "Torben Damgaard Jensen"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "playwright_eedb75ab-3c72-49e7-b0b5-44055c2840cf" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "playwright",
      "categoryId" : "d7b818c6-d795-4d88-b270-76236399cacf",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "playwright"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "ownerName" : "Jakob Rosenlund"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "useragent_adobeuxtech_d5fc6169-3436-4a1a-b9c5-91a25725e551" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "user-agent AdobeUxTech*",
      "categoryId" : "d825c7ab-66e3-4ca6-88b7-4536f9e44397",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "AdobeUxTech*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Unknown bot with high spikes of traffic"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "useragent_tp_1c692afb-dc4a-4b30-81e8-6880b61dd074" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "user-agent tp/*",
      "categoryId" : "d825c7ab-66e3-4ca6-88b7-4536f9e44397",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "tp/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Unknown bot which daily high spikes of traffic"
    }
  )
}

