resource "akamai_appsec_rate_policy" "denyddosorigin_errors_v6" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : var.rate_controls_bypass_list,
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
          "values" : var.rate_controls_bypass_list,
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


resource "akamai_appsec_rate_policy" "denyddos_404_v1" {
  config_id = akamai_appsec_configuration.config.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : var.rate_controls_bypass_list,
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