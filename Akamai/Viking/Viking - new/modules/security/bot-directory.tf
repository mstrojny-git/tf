resource "akamai_botman_custom_bot_category" "automatic_test_know" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Automatic Test Know"
    }
  )
}

resource "akamai_botman_custom_bot_category" "blocked_by_asn" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Blocked by ASN"
    }
  )
}

resource "akamai_botman_custom_bot_category" "custom_seo_bots" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Custom SEO Bots",
      "description" : "SEO bots from trusted 3rd parties"
    }
  )
}

resource "akamai_botman_custom_bot_category" "hostile_bots" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Hostile bots",
      "description" : "Bots with activity impacting site performance"
    }
  )
}

resource "akamai_botman_custom_bot_category" "internal_known_bots" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Internal known bots",
      "description" : "Bots used by OD and service providers"
    }
  )
}

resource "akamai_botman_custom_bot_category" "internal_office" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Internal office"
    }
  )
}

resource "akamai_botman_custom_bot_category" "non_http2" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Non http2"
    }
  )
}

resource "akamai_botman_custom_bot_category" "security_bots" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Security bots",
      "description" : "Security checks, like anti spam vendors"
    }
  )
}

resource "akamai_botman_custom_bot_category" "trusted_3rd_party_bots" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Trusted 3rd party bots"
    }
  )
}

resource "akamai_botman_custom_bot_category_sequence" "custom_bot_category_sequence" {
  config_id    = local.config_id
  category_ids = [akamai_botman_custom_bot_category.internal_known_bots.category_id, akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id, akamai_botman_custom_bot_category.custom_seo_bots.category_id, akamai_botman_custom_bot_category.hostile_bots.category_id, akamai_botman_custom_bot_category.blocked_by_asn.category_id, akamai_botman_custom_bot_category.non_http2.category_id, akamai_botman_custom_bot_category.internal_office.category_id, akamai_botman_custom_bot_category.automatic_test_know.category_id, akamai_botman_custom_bot_category.security_bots.category_id]
}

resource "akamai_botman_custom_defined_bot" "advin__servers" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Advin  servers",
      "categoryId" : akamai_botman_custom_bot_category.hostile_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "22295",
            "206216"
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
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "bogus requests with fake Chrome UA"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ahrefs" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Ahrefs",
      "categoryId" : akamai_botman_custom_bot_category.custom_seo_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "16276",
            "12876",
            "24940"
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
            "Mozilla/5.0 (compatible; AhrefsBot/6.1*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

/*resource "akamai_botman_custom_defined_bot" "automated_testing_bots" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Automated testing bots",
      "categoryId" : akamai_botman_custom_bot_category.internal_known_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "networkListCondition",
          "value" : [
            "80265_AUTOMATIONIPLIST"
          ]
        }
      ]
      "description" : "Bots used by automation tools",
      "ownerEmail" : "vladimir.munoz@officedepot.eu",
      "ownerName" : "Vladimir Munoz"
    }
  )
}*/

resource "akamai_botman_custom_defined_bot" "colly" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Colly",
      "categoryId" : akamai_botman_custom_bot_category.hostile_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "15169",
            "29009"
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
            "colly - https://github.com/gocolly/colly/v2"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Bot using Colly screen-scraping library"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "constantco" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "ConstantCo",
      "categoryId" : akamai_botman_custom_bot_category.blocked_by_asn.category_id
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "20473",
            "207990",
            "203020",
            "203999"
          ]
        }
      ],
      "description" : "Bot with fake Chrome UA from hosting companies in US"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "contentsquare" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "ContentSquare",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "52.18.162.157",
            "54.247.44.196",
            "52.51.9.12",
            "20.67.250.109"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "coupa" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Coupa",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "54.160.18.145",
            "54.237.22.143",
            "54.82.68.87",
            "54.83.205.196",
            "54.83.206.121",
            "54.83.206.99",
            "54.91.72.144",
            "75.101.135.143",
            "75.101.138.205",
            "107.20.174.167",
            "107.20.174.177",
            "107.20.174.184",
            "107.20.240.202",
            "107.20.250.110",
            "107.20.250.44",
            "107.20.88.1",
            "107.21.245.135",
            "107.21.245.137",
            "107.21.245.138",
            "107.22.249.25",
            "174.129.218.114",
            "174.129.221.185",
            "184.72.245.48",
            "184.72.245.50",
            "184.72.245.53",
            "184.72.249.69",
            "184.72.88.201",
            "184.73.170.127",
            "184.73.189.66",
            "184.73.219.218",
            "184.73.235.133",
            "184.73.244.248",
            "184.73.244.251",
            "184.73.245.25",
            "23.21.150.196",
            "23.23.177.14",
            "23.23.177.16",
            "23.23.177.21",
            "23.23.177.27",
            "23.23.177.29",
            "23.23.177.30",
            "23.23.177.47",
            "23.23.177.48",
            "23.23.177.49",
            "50.16.243.194",
            "50.16.243.195",
            "50.16.243.196",
            "50.16.243.201",
            "50.16.243.202",
            "50.16.243.203",
            "50.16.243.204",
            "50.16.243.205",
            "50.16.243.206",
            "50.16.87.82",
            "46.137.79.132",
            "46.137.79.134",
            "46.137.79.136",
            "46.137.98.131",
            "46.137.98.138",
            "54.235.152.47",
            "54.246.251.192/26",
            "54.247.94.220",
            "54.247.94.215",
            "54.247.93.79",
            "54.228.236.10",
            "54.93.127.0/25",
            "54.217.239.192/26",
            "52.215.250.0/26",
            "3.248.216.128/26",
            "3.251.106.0/25",
            "40.65.233.192/28",
            "40.65.242.192/28",
            "3.95.40.0/24",
            "34.239.145.192/26",
            "54.244.45.128/25",
            "54.236.3.0/25",
            "23.23.189.128/28",
            "23.23.79.0/25",
            "52.220.191.101",
            "52.220.191.96/27",
            "18.140.177.144/28",
            "18.141.66.192/27"
          ]
        }
      ],
      "description" : "Coupa access to billboard",
      "notes" : "ECOMKTLO-4285"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "its" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "ITS",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "45.84.22.169"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "idealo" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Idealo",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (compatible; idealo-bot pricevalidator; https://partner.idealo.com/de/bot/)"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "35.158.143.213"
          ]
        }
      ],
      "description" : "Bot from partner.idealo.com",
      "ownerEmail" : "vladimir.munoz@officedepot.eu",
      "ownerName" : "Vladimir Munoz"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "internal_office" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Internal office",
      "categoryId" : akamai_botman_custom_bot_category.internal_office.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "185.224.52.0/24"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "know_internal_tes" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Know internal Tes",
      "categoryId" : akamai_botman_custom_bot_category.automatic_test_know.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "52.213.246.122"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "multiasn" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "MultiASN",
      "categoryId" : akamai_botman_custom_bot_category.blocked_by_asn.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "32748",
            "46261",
            "36352",
            "206092",
            "62904",
            "8100",
            "397731"
          ]
        }
      ],
      "description" : "Javascript anomaly using multiple ASN"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "non_http2_conection" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Non HTTP2 conection",
      "categoryId" : akamai_botman_custom_bot_category.non_http2.category_id
      "conditions" : [
        {
          "positiveMatch" : false,
          "type" : "requestProtocolVersionCondition",
          "value" : [
            "HTTP/2"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "onetrust" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "OneTrust",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "20.1.221.192/29",
            "20.54.106.120/29",
            "20.103.218.56/29",
            "20.106.15.128/29"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "screaming_frog" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Screaming Frog",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Screaming Frog SEO Spider/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Screaming frog spider",
      "ownerName" : "Jeroen Camminga"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "searchmetrics" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Searchmetrics",
      "categoryId" : akamai_botman_custom_bot_category.custom_seo_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "24940"
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
            "Mozilla/5.0 (compatible; SearchmetricsBot*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "semrush" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Semrush",
      "categoryId" : akamai_botman_custom_bot_category.custom_seo_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "209366"
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
            "*SemrushBot*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "site24x7" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Site24x7",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
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
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Monitoring tool from ManageEngine"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "thumbortwicpics" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Thumbor-Twicpics",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Thumbor/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Thumbor related bot"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "topsec" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "TopSec",
      "categoryId" : akamai_botman_custom_bot_category.security_bots.category_id
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "Python/* aiohttp/*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "142.93.105.243",
            "64.226.104.15",
            "178.128.192.152",
            "64.226.116.128",
            "64.226.98.115",
            "142.93.109.76"
          ]
        }
      ],
      "description" : "TopSec.com"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ugam" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Ugam",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "ipAddressCondition",
          "value" : [
            "52.204.100.54",
            "54.211.35.154",
            "54.221.245.30"
          ]
        }
      ],
      "description" : "HP's web scoring provider",
      "notes" : "TASK5165867",
      "ownerName" : "Alemka Lacevic/Senthil Subramanian"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "visualcron" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "VisualCron",
      "categoryId" : akamai_botman_custom_bot_category.trusted_3rd_party_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "15456"
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
            "VisualCron"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "block_m247" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "block M247",
      "categoryId" : akamai_botman_custom_bot_category.blocked_by_asn.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "9009"
          ]
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : false,
          "type" : "ipAddressCondition",
          "value" : [
            "194.145.240.171",
            "194.145.241.10",
            "194.145.243.5",
            "194.145.240.32"
          ]
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "page_speed_insights" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "page speed insights",
      "categoryId" : akamai_botman_custom_bot_category.custom_seo_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "15169"
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
            "Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Mobile Safari/537.36 Chrome-Lighthouse",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Safari/537.36 Chrome-Lighthouse"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "princegb" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "princeGB",
      "categoryId" : akamai_botman_custom_bot_category.hostile_bots.category_id
      "conditions" : [
        {
          "name" : [
            "Referer"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "https://www.viking-direct.co.uk/en/checkout/multi/review"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
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
          "type" : "requestHeaderCondition",
          "value" : [
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:1??.0) Gecko/20100101 Firefox/1??.0"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Fraud requests from PrinceGB"
    }
  )
}

resource "akamai_botman_custom_defined_bot" "spammers" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "spammers",
      "categoryId" : akamai_botman_custom_bot_category.hostile_bots.category_id
      "conditions" : [
        {
          "checkIps" : "CONNECTING",
          "positiveMatch" : true,
          "type" : "asNumberCondition",
          "value" : [
            "53755",
            "11572",
            "265850",
            "263179",
            "46261"
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
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36"
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
            "www.vikingdirekt.ch"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "spammers abusing email webform",
      "notes" : "Input_Output _Flood\nTELEIUM SA\nPaetec Communications\nWebline Services, S.A.\nQuickPacket, LLC"
    }
  )
}

