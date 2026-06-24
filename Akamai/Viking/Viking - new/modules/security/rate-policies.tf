resource "akamai_appsec_rate_policy" "page_view_requests" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        /*{
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "76251_RATECONTROLSBYPASSLIST"
          ]
        },*/
        {
          "positiveMatch" : false,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 18,
      "burstThreshold" : 25,
      "clientIdentifier" : "ip",
      "description" : "A popular brute force attack consists of sending a large number of requests for base page HTML page or XHR requests (usually non-cacheable). This could destabilize the origin.\nType: DoS Detection",
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
          "csv",
          "dcr",
          "doc",
          "docx",
          "dtd",
          "ejs",
          "ejss",
          "eot",
          "eps",
          "exe",
          "flv",
          "gcf",
          "gff",
          "gif",
          "grv",
          "hdml",
          "hdp",
          "hqx",
          "ico",
          "ini",
          "jar",
          "jp2",
          "jpeg",
          "jpg",
          "js",
          "jxr",
          "mid",
          "midi",
          "mov",
          "mp3",
          "mp4",
          "nc",
          "ogv",
          "otc",
          "otf",
          "pct",
          "pdf",
          "pict",
          "pls",
          "png",
          "ppc",
          "ppt",
          "pptx",
          "ps",
          "pws",
          "svg",
          "svgz",
          "swa",
          "swf",
          "tif",
          "tiff",
          "ttc",
          "ttf",
          "txt",
          "vbs",
          "w32",
          "wav",
          "wbmp",
          "wdp",
          "webm",
          "webp",
          "wml",
          "wmlc",
          "wmls",
          "wmlsc",
          "woff",
          "woff2",
          "xls",
          "xlsx",
          "xsd",
          "zip"
        ]
      },
      "matchType" : "path",
      "name" : "1Page View Requests",
      "path" : {
        "positiveMatch" : false,
        "values" : [
          "/is/image/*"
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

resource "akamai_appsec_rate_policy" "origin_error" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        /*{
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "76251_RATECONTROLSBYPASSLIST"
          ]
        },*/
        {
          "positiveMatch" : true,
          "type" : "ResponseStatusCondition",
          "values" : [
            "400",
            "401",
            "402",
            "403",
            "404",
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
      "averageThreshold" : 5,
      "burstThreshold" : 8,
      "clientIdentifier" : "ip",
      "description" : "An excessive error rate from the origin could indicate malicious activity by a bot scanning the site or a publishing error. In both cases, this would increase the origin traffic and could potentially destabilize it.",
      "matchType" : "path",
      "name" : "1Origin Error",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ForwardResponse",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "post_requests" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        /*{
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "76251_RATECONTROLSBYPASSLIST"
          ]
        },*/
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 12,
      "burstThreshold" : 20,
      "clientIdentifier" : "ip",
      "description" : "Mitigating HTTP flood attacks using POST requests.",
      "matchType" : "path",
      "name" : "1POST Requests",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "login_page_post" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        /*{
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "76251_RATECONTROLSBYPASSLIST"
          ]
        },*/
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
      "name" : "Login page POST",
      "path" : {
        "positiveMatch" : true,
        "values" : [
          "/en/j_spring_security_check",
          "/de/j_spring_security_check"
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

resource "akamai_appsec_rate_policy" "post_requests__new" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        /*{
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "76251_RATECONTROLSBYPASSLIST"
          ]
        },*/
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 8,
      "burstThreshold" : 15,
      "clientIdentifier" : "ip",
      "description" : "Mitigating HTTP flood atacks using POST requests",
      "matchType" : "path",
      "name" : "POST Requests - new",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : true,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "loyaltyscheme" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "averageThreshold" : 2,
      "burstThreshold" : 4,
      "burstWindow" : 5,
      "clientIdentifier" : "ip",
      "description" : "Block brute force attack on LoyaltyScheme URL.",
      "hostnames" : [
        "www.viking-direct.co.uk"
      ],
      "matchType" : "path",
      "name" : "LoyaltyScheme",
      "path" : {
        "positiveMatch" : true,
        "values" : [
          "/ajax/loyalty/linkLoyaltyScheme"
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

