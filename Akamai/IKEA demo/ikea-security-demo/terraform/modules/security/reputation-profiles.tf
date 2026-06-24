resource "akamai_appsec_reputation_profile" "scanning_tools_high_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : var.client_reputation_bypass_list,
          }
        ],
        "positiveMatch" : false
      },
      "context" : "SCANTL",
      "name" : "Scanning Tools (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_high_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : var.client_reputation_bypass_list,
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

resource "akamai_appsec_reputation_profile" "dos_attackers_low_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "DoS Attackers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_low_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_high_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : var.client_reputation_bypass_list,
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBATCK",
      "name" : "Web Attackers (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_high_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "AsNumberCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "16509",
              "15169"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (High Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_low_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_low_threat" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_low_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (Low Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_high_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (High Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_high_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "Dos Attackers (High Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_low_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "Dos Attackers (Low Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_low_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (Low Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_high_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (High Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_high_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (High Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_low_threatshared_ip" {
  config_id = akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (Low Threat)-Shared IP",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 5
    }
  )
}

