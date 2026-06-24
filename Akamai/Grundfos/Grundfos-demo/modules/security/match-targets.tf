resource "akamai_appsec_match_target" "website_10170309" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "101ea80c231c.mylabserver.com",
        "101ea80c232c.mylabserver.com",
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.production.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
