resource "akamai_appsec_match_target" "website_9870918" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "learn.shbantwa.xyz"
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
