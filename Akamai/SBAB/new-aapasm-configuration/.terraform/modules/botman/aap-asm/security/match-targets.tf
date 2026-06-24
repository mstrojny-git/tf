
resource "akamai_appsec_match_target" "website_8232297" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : var.hostnames,
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        for id in var.client_lists_securitybypass : { "id" : id }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.tfdemo.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
