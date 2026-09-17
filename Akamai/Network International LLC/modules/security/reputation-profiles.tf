resource "akamai_appsec_reputation_profile" "web_attackers_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "className" : "HostCondition",
            "host" : [
              "api-uat.network.global",
              "api.network.global"
            ],
            "index" : 1,
            "positiveMatch" : true,
            "valueWildcard" : true
          },
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 2,
            "positiveMatch" : true,
            "value" : [
              "114112_REPUTATIONWHITELIST"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "DOSATCK",
      "name" : "DoS Attackers (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_low_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_low_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "DoS Attackers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_low_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_low_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attacker_high_threat__shared_ip_only" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attacker High Threat - Shared ip only",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_10" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools 10",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 10
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scraper_high_threat__shared_ip_only" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scraper High Threat - Shared ip only",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools__high_threat__shared_ip_only" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools  High Threat - Shared ip only",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos__attacker_high_threat__shared_ip_only" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "DOS  Attacker High Threat - Shared ip only",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

