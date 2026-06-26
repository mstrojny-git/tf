resource "akamai_appsec_match_target" "website_13010092" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "www.error_testing.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "286204_FORTFIMPORTSECURITYBYPA",
          "name" : "for-tf-import-Security Bypass List"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.tfdemo.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
