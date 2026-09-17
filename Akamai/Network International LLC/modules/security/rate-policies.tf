resource "akamai_appsec_rate_policy" "page_view_requests_v1" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "GET",
            "HEAD",
            "PUT"
          ]
        }
      ],
      "averageThreshold" : 12,
      "burstThreshold" : 18,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "A popular brute force attack consists of sending a large number of requests for base page HTML page or XHR requests (usually non-cacheable). This could destabilize the origin.",
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
          "svg",
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
      "name" : "Page View Requests v1",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "origin_error_v1" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
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
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "An excessive error rate from the origin could indicate malicious activity by a bot scanning the site or a publishing error. In both cases this would increase the origin traffic and could potentially destabilize it.\r\n",
      "matchType" : "path",
      "name" : "Origin Error v1",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ForwardResponse",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "post_requests_v1" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 3,
      "burstThreshold" : 5,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "POST Requests",
      "matchType" : "path",
      "name" : "POST Requests v1",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "ni_corporate__page_view_requests" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "GET",
            "HEAD",
            "PUT"
          ]
        }
      ],
      "averageThreshold" : 15,
      "burstThreshold" : 20,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "A popular brute force attack consists of sending a large number of requests for base page HTML page or XHR requests (usually non-cacheable). This could destabilize the origin.",
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
          "svg",
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
      "name" : "NI Corporate - Page View Requests",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "ni_corporate__origin_error" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
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
      "averageThreshold" : 8,
      "burstThreshold" : 10,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "An excessive error rate from the origin could indicate malicious activity by a bot scanning the site or a publishing error. In both cases this would increase the origin traffic and could potentially destabilize it.",
      "matchType" : "path",
      "name" : "NI Corporate - Origin Error",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ForwardResponse",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "ni_corporate__post_requests" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 5,
      "burstThreshold" : 8,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "POST Requests",
      "hosts" : {
        "positiveMatch" : false,
        "values" : [
          "api.network.global",
          "onboarding.network.ae"
        ]
      },
      "matchType" : "path",
      "name" : "NI Corporate - POST Requests",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "pos_device_post_requests_header_to_apinetworkglobal" {
  config_id = local.config_id
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
      "averageThreshold" : 10,
      "burstThreshold" : 16,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "condition" : {
        "atomicConditions" : [
          {
            "className" : "RequestHeaderCondition",
            "name" : [
              "NI-api_network_global"
            ],
            "nameWildcard" : true,
            "positiveMatch" : true,
            "value" : [
              "qxyQt3D44UpnerOT"
            ],
            "valueWildcard" : true
          }
        ]
      },
      "counterType" : "region_aggregated",
      "description" : "POST request to api.network.global from POS devices using specified request header ",
      "hostnames" : [
        "api.network.global"
      ],
      "matchType" : "path",
      "name" : "POS device POST requests (header) to api.network.global",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "pos_device_post_requests__clien_list_to_apinetworkglobal" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : true,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 10,
      "burstThreshold" : 16,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "POST request to api.network.global from POS devices coming from IPs on a Client List",
      "hostnames" : [
        "api.network.global"
      ],
      "matchType" : "path",
      "name" : "POS device POST requests  (clien list) to api.network.global",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "post_requests_to_apinetworkglobal" {
  config_id = local.config_id
  rate_policy = jsonencode(
    {
      "additionalMatchOptions" : [
        {
          "positiveMatch" : false,
          "type" : "NetworkListCondition",
          "values" : [
            "22606_RATECONTROLBYPASSLIST"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "RequestMethodCondition",
          "values" : [
            "POST"
          ]
        }
      ],
      "averageThreshold" : 5,
      "burstThreshold" : 8,
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "condition" : {
        "atomicConditions" : [
          {
            "className" : "RequestHeaderCondition",
            "name" : [
              "NI-api_network_global"
            ],
            "nameWildcard" : true,
            "positiveMatch" : false,
            "value" : [
              "qxyQt3D44UpnerOT"
            ]
          }
        ]
      },
      "counterType" : "region_aggregated",
      "description" : "POST Requests to api.network.global hostname not coming from exempt POS devices",
      "hostnames" : [
        "api.network.global"
      ],
      "matchType" : "path",
      "name" : "POST requests to api.network.global",
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

resource "akamai_appsec_rate_policy" "applynetworkaeapiv1otpsend_limiting_rc" {
  config_id = local.config_id
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
      "burstWindow" : 5,
      "clientIdentifiers" : [
        "ip"
      ],
      "counterType" : "region_aggregated",
      "description" : "RC to limit the number requests one client can send to the text message gateway through apply.network.ae/api/v1/otp/send",
      "hostnames" : [
        "apply.network.ae"
      ],
      "matchType" : "path",
      "name" : "apply.network.ae/api/v1/otp/send limiting RC",
      "path" : {
        "positiveMatch" : true,
        "values" : [
          "/api/v1/otp/send"
        ]
      },
      "pathMatchType" : "Custom",
      "pathUriPositiveMatch" : true,
      "penaltyBoxDuration" : "TEN_MINUTES",
      "requestType" : "ClientRequest",
      "sameActionOnIpv6" : false,
      "type" : "WAF",
      "useXForwardForHeaders" : false
    }
  )
}

