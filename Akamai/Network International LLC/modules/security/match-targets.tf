resource "akamai_appsec_match_target" "website_2287948" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "ics-portal-uat.network.global",
        "cdn-neo.network.ae",
        "hysecure.network.ae",
        "smart-uat3.network.ae",
        "servicing.financing.network.ae",
        "orchestrator.financing.network.ae",
        "niprepaid.network.ae",
        "mposbo.network.ae",
        "isupport.network.global",
        "nicorportal.com",
        "orabankgb.network.ae",
        "customer.network.ae",
        "network.ae",
        "orabanksn.network.ae",
        "www.network.global",
        "www.nicorportal.ae",
        "orabankiv.network.ae",
        "onboarding.network.ae",
        "orabankga.network.ae",
        "orabankng.network.ae",
        "salesforcedocuments.network.ae",
        "smart-preprod.network.ae",
        "videos.network.ae",
        "smartviewdashboard.network.global",
        "issuer.network.ae",
        "orabanktd.network.ae",
        "operations.financing.network.ae",
        "smart-uataa.network.ae",
        "www.nicorportal.com",
        "vcard.network.ae",
        "lender.financing.network.ae",
        "orabankbn.network.ae",
        "smart-uat.network.ae",
        "smart.network.ae",
        "mpos-uat.network.ae",
        "self-onboarding-uat.network.ae",
        "etas.network.ae",
        "orabankmi.network.ae",
        "onboarding-uat.network.ae",
        "orabankgn.network.ae",
        "mpos.network.ae",
        "orabankbk.network.ae",
        "rules.financing.network.ae",
        "sdocuments.network.ae",
        "smartview.network.ae",
        "network.global",
        "orabanktg.network.ae",
        "posinventory.network.ae",
        "orabankma.network.ae",
        "support.network.ae",
        "token.network.ae",
        "nicorportal.ae",
        "login.smartviewdashboard.network.global"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "22605_WAFBYPASSLIST",
          "name" : "WAF-Group-Security_Policy-Egypt/UAE/KSA/Jordan-Exception"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.ni_corporate_websites.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_2321208" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "nigeria.network.global",
        "beta.network.ae",
        "identity-nonprod.network.global",
        "remotedesk.network.global",
        "web-prod.nicorportal.ae",
        "www.networkinternational.ae",
        "developer.network.global",
        "prd.network.global",
        "identity.network.global",
        "uam-prod.nicorportal.ae",
        "www.network.ae",
        "commercialcards.uab.ae",
        "www.nigeria-beta.network.global",
        "network-biz.network.ae",
        "nigeria-beta.network.global",
        "investors.networkinternational.ae",
        "merchant-prod.nicorportal.ae",
        "workflow-prod.nicorportal.ae",
        "notifications-prod.nicorportal.ae",
        "wasp-prod.nicorportal.ae",
        "network.ae",
        "apply.network.ae",
        "commercialcards.investbank.ae",
        "d2c-monitoring.nicorportal.ae"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "22605_WAFBYPASSLIST",
          "name" : "WAF-Group-Security_Policy-Egypt/UAE/KSA/Jordan-Exception"
        },
        {
          "id" : "70441_NIPARTNEREMPEROR",
          "name" : "WAF_Security_File/WAF_Security_File_UAT-Security_Policy-Exception"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.network_international.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_3447351" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "merchantportal-uat.network.ae",
        "monitoring.network.ae",
        "keaz.orabank.net"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "22605_WAFBYPASSLIST",
          "name" : "WAF-Group-Security_Policy-Egypt/UAE/KSA/Jordan-Exception"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.onboarding_alert.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_4152199" {
  config_id = local.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "nilpmuat.network.ae",
        "api-dev.network.global",
        "api.network.ae",
        "api-sandbox.network.global",
        "apiportal.network.ae",
        "nimonitoringportal.network.global",
        "api.network.global",
        "d2c-prod.nicorportal.ae",
        "nilpm.network.ae",
        "financing.network.ae",
        "php8.network.ae"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "22605_WAFBYPASSLIST",
          "name" : "WAF-Group-Security_Policy-Egypt/UAE/KSA/Jordan-Exception"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.ni_corporate_api_.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
