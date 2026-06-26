resource "akamai_appsec_reputation_profile" "web_scrapers_low_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_low_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "SCANTL",
      "name" : "Scanning Tools (Low Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 7
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_high_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "DOSATCK",
      "name" : "DoS Attackers (High Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_low_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (Low Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 7
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
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

resource "akamai_appsec_reputation_profile" "dos_attackers_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
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

resource "akamai_appsec_reputation_profile" "web_scrapers_high_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (High Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
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

resource "akamai_appsec_reputation_profile" "web_attackers_low_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
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
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
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
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "SCANTL",
      "name" : "Scanning Tools (Low Threat)",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_high_threat" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
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

resource "akamai_appsec_reputation_profile" "dos_attackers_low_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "DOSATCK",
      "name" : "DoS Attackers (Low Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 7
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_low_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBATCK",
      "name" : "Web Attackers (Low Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 7
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_high_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "WEBATCK",
      "name" : "Web Attackers (High Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_high_threat_shared_ips" {
  config_id = local.config_id
  reputation_profile = jsonencode(
    {
      "condition" : {
        "atomicConditions" : [
          {
            "checkIps" : "connecting",
            "className" : "NetworkListCondition",
            "index" : 1,
            "positiveMatch" : true,
            "value" : [
              "286208_FORTFIMPORTREPUTATIONBY"
            ]
          }
        ],
        "positiveMatch" : false
      },
      "context" : "SCANTL",
      "name" : "Scanning Tools (High Threat) [Shared IPs]",
      "sharedIpHandling" : "SHARED_ONLY",
      "threshold" : 9
    }
  )
}

