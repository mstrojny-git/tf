resource "akamai_appsec_rate_policy" "denyddospost_put_delete_edge_hits_v5" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6746_IKEAIBMSOFTLAYERCLOUD",
            "6423_IKEABYPASS"
          ]
        },
        {
          "positiveMatch" : false,
          "type" : "RequestHeaderCondition",
          "values" : [
            "Cookie:*46bb2875-baf8-4fe3-ae33-d57c302b0db5*"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "PUT",
            "POST",
            "HTTP_DELETE"
          ]
        }
      ],
      "averageThreshold" : 5,
      "burstThreshold" : 7,
      "clientIdentifier" : "ip",
      "description" : "DENY-DDoS\r\nPOST PUT DELETE requests",
      "matchType" : "path",
      "name" : "DENY-DDoS-POST PUT DELETE Edge Hits v5",
      "path" : {
        "positiveMatch" : false,
        "values" : [
          "/webapp/wcs/stores/servlet/GetUserInfo",
          "/retail/iows/??/??/customer/sync"
        ]
      },
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "denybrute_force_protection__forward_hits_v5" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6423_IKEABYPASS",
            "6746_IKEAIBMSOFTLAYERCLOUD"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "PUT",
            "POST",
            "HTTP_DELETE"
          ]
        }
      ],
      "averageThreshold" : 2,
      "burstThreshold" : 4,
      "clientIdentifier" : "ip",
      "description" : "Brute Force Protection - POST/PUT/DELETE method on /webapp/wcs/stores/servlet/*",
      "matchType" : "path",
      "name" : "DENY-Brute Force Protection - Forward Hits v5",
      "path" : {
        "positiveMatch" : true,
        "values" : [
          "/webapp/wcs/stores/servlet/*",
          "/retail/iows/??/??/customer/irw/*/password",
          "/retail/iows/??/??/customer/irw/password",
          "/retail/iows/??/??/customer/irw?"
        ]
      },
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ForwardRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "denyddosorigin_errors_v6" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6746_IKEAIBMSOFTLAYERCLOUD",
            "6423_IKEABYPASS"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "ResponseStatusCondition",
          "values" : [
            "400",
            "401",
            "402",
            "403",
            "405",
            "406",
            "407",
            "408",
            "409",
            "410",
            "500",
            "501",
            "502",
            "503",
            "504"
          ]
        }
      ],
      "averageThreshold" : 10,
      "burstThreshold" : 15,
      "clientIdentifier" : "ip",
      "description" : "DENY-DDoS\r\nAn excessive error rate from the origin could indicate malicious activity by a bot scanning the site or a publishing error. In both cases this would increase the origin traffic and could potentially destabilize it.",
      "fileExtensions" : {
        "positiveMatch" : false,
        "values" : [
          "jpeg",
          "jpg"
        ]
      },
      "matchType" : "path",
      "name" : "DENY-DDoS-Origin Errors v6",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ForwardResponse",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "denyddosedge_hits_v5" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6746_IKEAIBMSOFTLAYERCLOUD",
            "6423_IKEABYPASS"
          ]
        },
        {
          "positiveMatch" : false,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 80,
      "burstThreshold" : 120,
      "clientIdentifier" : "ip",
      "description" : "DENY-DDoS\r\nA popular brute force attack consists of sending a large number of requests for base page HTML page or XHR requests (usually non-cacheable). This could destabilize the origin.",
      "fileExtensions" : {
        "positiveMatch" : false,
        "values" : [
          "aif",
          "aiff",
          "au",
          "avi",
          "bin",
          "bmp",
          "cab",
          "carb",
          "cct",
          "cdf",
          "class",
          "css",
          "doc",
          "dcr",
          "dtd",
          "exe",
          "flv",
          "gcf",
          "gff",
          "gif",
          "grv",
          "hdml",
          "hqx",
          "ico",
          "ini",
          "jpeg",
          "jpg",
          "js",
          "mov",
          "mp3",
          "nc",
          "pct",
          "pdf",
          "png",
          "ppc",
          "pws",
          "swa",
          "swf",
          "txt",
          "vbs",
          "w32",
          "wav",
          "wbmp",
          "wml",
          "wmlc",
          "wmls",
          "wmlsc",
          "xsd",
          "zip",
          "webp",
          "jxr",
          "hdp",
          "wdp",
          "webm",
          "ogv",
          "mp4",
          "ttf",
          "woff",
          "eot"
        ]
      },
      "matchType" : "path",
      "name" : "DENY-DDoS-Edge Hits v5",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "denyddosforward_hits_v5" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6423_IKEABYPASS",
            "6746_IKEAIBMSOFTLAYERCLOUD"
          ]
        },
        {
          "positiveMatch" : false,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 60,
      "burstThreshold" : 80,
      "clientIdentifier" : "ip",
      "description" : "DENY-DDoS\r\nNumber of requests going forward to the origin.",
      "fileExtensions" : {
        "positiveMatch" : false,
        "values" : [
          "aif",
          "aiff",
          "au",
          "avi",
          "bin",
          "bmp",
          "cab",
          "carb",
          "cct",
          "cdf",
          "class",
          "css",
          "doc",
          "dcr",
          "dtd",
          "exe",
          "flv",
          "gcf",
          "gff",
          "gif",
          "grv",
          "hdml",
          "hqx",
          "ico",
          "ini",
          "jpeg",
          "jpg",
          "js",
          "mov",
          "mp3",
          "nc",
          "pct",
          "pdf",
          "png",
          "ppc",
          "pws",
          "swa",
          "swf",
          "txt",
          "vbs",
          "w32",
          "wav",
          "wbmp",
          "wml",
          "wmlc",
          "wmls",
          "wmlsc",
          "xsd",
          "zip",
          "webp",
          "jxr",
          "hdp",
          "wdp",
          "webm",
          "ogv",
          "mp4",
          "ttf",
          "woff",
          "eot"
        ]
      },
      "matchType" : "path",
      "name" : "DENY-DDoS-Forward Hits v5",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ForwardRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "denyddos_404_v1" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6423_IKEABYPASS",
            "6746_IKEAIBMSOFTLAYERCLOUD"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "ResponseStatusCondition",
          "values" : [
            "404"
          ]
        }
      ],
      "averageThreshold" : 13,
      "burstThreshold" : 18,
      "clientIdentifier" : "ip",
      "description" : "DENY-DDoS\r\nAn excessive error rate from the origin could indicate malicious activity by a bot scanning the site or a publishing error. In both cases this would increase the origin traffic and could potentially destabilize it.",
      "fileExtensions" : {
        "positiveMatch" : false,
        "values" : [
          "jpeg",
          "jpg"
        ]
      },
      "matchType" : "path",
      "name" : "DENY-DDoS- 404 v1",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ForwardResponse",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "abusecrawlercontrol_v1" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : true,
          "type" : "NetworkListCondition",
          "values" : [
            "1283_MICROSOFTWINDOWSAZUREDAT",
            "1024_AMAZONELASTICCOMPUTECLOU",
            "365_AKAMAITOREXITNODES",
            "15321_IKEAKNOWNCRAWLERS"
          ]
        }
      ],
      "averageThreshold" : 20,
      "burstThreshold" : 40,
      "clientIdentifier" : "ip",
      "description" : "Used to restrict rate of crawler activity on IKEA.com properties.\r\nMatches on network lists of known cloud providers and crawler IPs - not nescessary having a Reputation score",
      "fileExtensions" : {
        "positiveMatch" : true,
        "values" : [
          "EMPTY_STRING"
        ]
      },
      "matchType" : "path",
      "name" : "ABUSE-CrawlerControl v1",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ForwardRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "email_abuse" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 1,
      "burstThreshold" : 1,
      "clientIdentifier" : "ip",
      "matchType" : "path",
      "name" : "Email Abuse",
      "path" : {
        "positiveMatch" : true,
        "values" : [
          "/??/??/contact/local_*",
          "/webapp/wcs/stores/servlet/IrwSharePageByEmail",
          "/webapp/wcs/stores/servlet/IrwEmailShoppingList"
        ]
      },
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "ddosclientreputationsharedip" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6746_IKEAIBMSOFTLAYERCLOUD",
            "6423_IKEABYPASS"
          ]
        }
      ],
      "averageThreshold" : 7,
      "burstThreshold" : 15,
      "burstWindow" : 5,
      "clientIdentifier" : "ip-useragent",
      "condition" : {
        "atomicConditions" : [
          {
            "className" : "ClientReputationCondition",
            "name" : [
              "WEBATCK",
              "SCANTL",
              "DOSATCK"
            ],
            "positiveMatch" : true,
            "sharedIpHandling" : "SHARED_ONLY",
            "value" : 9
          }
        ]
      },
      "description" : "DDOS-Client-Reputation-sharedIP",
      "matchType" : "path",
      "name" : "DDOS-Client-Reputation-sharedIP",
      "path" : {
        "positiveMatch" : false,
        "values" : [
          "/csp-report/BY4BJ-VCVK6-JMEA5-T2M38-5FM5W",
          "/.well-known/jwks.json",
          "/*/*/api/announcement",
          "/oauth/token"
        ]
      },
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "ddosclientreputationnonsharedip" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "6746_IKEAIBMSOFTLAYERCLOUD",
            "6423_IKEABYPASS"
          ]
        }
      ],
      "averageThreshold" : 5,
      "burstThreshold" : 10,
      "burstWindow" : 5,
      "clientIdentifier" : "ip-useragent",
      "condition" : {
        "atomicConditions" : [
          {
            "className" : "ClientReputationCondition",
            "name" : [
              "DOSATCK",
              "SCANTL",
              "WEBATCK"
            ],
            "positiveMatch" : true,
            "sharedIpHandling" : "NON_SHARED",
            "value" : 9
          }
        ]
      },
      "description" : "DDOS-Client-Reputation-NonsharedIP",
      "matchType" : "path",
      "name" : "DDOS-Client-Reputation-NonsharedIP",
      "path" : {
        "positiveMatch" : false,
        "values" : [
          "/csp-report/BY4BJ-VCVK6-JMEA5-T2M38-5FM5W",
          "/.well-known/jwks.json",
          "/*/*/api/announcement",
          "/oauth/token"
        ]
      },
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

