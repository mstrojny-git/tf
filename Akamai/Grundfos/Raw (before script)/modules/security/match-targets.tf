resource "akamai_appsec_match_target" "website_1578634" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "portalssand.grundfos.com",
        "enaqua.grundfos.com",
        "api-sand.grundfos.com",
        "ghs.grundfos.com",
        "net.grundfos.com",
        "wwwsand.grundfos.com",
        "product-selectionsand.grundfos.com",
        "portalstest.grundfos.com",
        "auth.grundfos.com",
        "app.grundfos.com",
        "portalssand01.grundfos.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "70148_SECURITYBYPASSLIST",
          "name" : "Security Bypass List"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.main_policy.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_2351195" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "product-selectionsand01.grundfos.com",
        "wwwsand01.grundfos.com",
        "product-selection.grundfos.com",
        "cdn.grundfos.com",
        "www.grundfos.com",
        "product-selectiontest.grundfos.com",
        "wwwtest.grundfos.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "70148_SECURITYBYPASSLIST",
          "name" : "Security Bypass List"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.waf.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}

resource "akamai_appsec_match_target" "api_2351192" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "apis" : [
        {
          "id" : 536219,
          "name" : "app.grundfos.com"
        },
        {
          "id" : 537111,
          "name" : "net.grundfos.com"
        }
      ],
      "bypassNetworkLists" : [
        {
          "name" : "Security Bypass List",
          "id" : "70148_SECURITYBYPASSLIST"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.waf.security_policy_id
      },
      "sequence" : 3,
      "type" : "api"
    }
  )
}
