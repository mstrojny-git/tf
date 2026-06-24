resource "akamai_appsec_match_target" "website_6426994" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/"
      ],
      "hostnames" : [
        "dummy.do.not.remove.network.list.nesting"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "150930_MSTROJNYTESTING",
          "name" : "mstrojny_testing"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.main.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_6426996" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : null,
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "101187_MSTROJNYSECURITYBYPASS",
          "name" : "mstrojny - Security Bypass List"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.main.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_9697361" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "*.test.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.main.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}

resource "akamai_appsec_match_target" "api_6426995" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "apis" : [
        {
          "id" : 738944,
          "name" : "mstrojny_v1"
        },
        {
          "id" : 790817,
          "name" : "_strojny"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.main.security_policy_id
      },
      "sequence" : 4,
      "type" : "api"
    }
  )
}
