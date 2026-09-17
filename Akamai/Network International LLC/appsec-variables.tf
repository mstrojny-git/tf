variable "group_name" {
  type    = string
  default = ""
}

variable "contract_id" {
  type    = string
  default = ""
}

variable "name" {
  type    = string
  default = "WAF Security File"
}

variable "description" {
  type    = string
  default = "Created by Terraform"
}

variable "hostnames" {
  type    = list(string)
  default = ["nigeria.network.global", "ics-portal-uat.network.global", "identity-nonprod.network.global", "cdn-neo.network.ae", "www.networkinternational.ae", "smart-uat3.network.ae", "servicing.financing.network.ae", "developer.network.global", "orchestrator.financing.network.ae", "d2c-prod.nicorportal.ae", "niprepaid.network.ae", "php8.network.ae", "mposbo.network.ae", "isupport.network.global", "commercialcards.uab.ae", "nicorportal.com", "orabankgb.network.ae", "investors.networkinternational.ae", "merchant-prod.nicorportal.ae", "customer.network.ae", "wasp-prod.nicorportal.ae", "network.ae", "orabanksn.network.ae", "www.network.global", "www.nicorportal.ae", "orabankiv.network.ae", "onboarding.network.ae", "orabankga.network.ae", "orabankng.network.ae", "salesforcedocuments.network.ae", "smart-preprod.network.ae", "www.network.ae", "videos.network.ae", "nigeria-beta.network.global", "network-biz.network.ae", "keaz.orabank.net", "smartviewdashboard.network.global", "api-sandbox.network.global", "orabanktd.network.ae", "issuer.network.ae", "operations.financing.network.ae", "smart-uataa.network.ae", "www.nicorportal.com", "d2c-monitoring.nicorportal.ae", "vcard.network.ae", "orabankbn.network.ae", "lender.financing.network.ae", "smart-uat.network.ae", "smart.network.ae", "mpos-uat.network.ae", "self-onboarding-uat.network.ae", "web-prod.nicorportal.ae", "etas.network.ae", "orabankmi.network.ae", "orabankgn.network.ae", "onboarding-uat.network.ae", "mpos.network.ae", "prd.network.global", "nilpm.network.ae", "uam-prod.nicorportal.ae", "identity.network.global", "monitoring.network.ae", "workflow-prod.nicorportal.ae", "orabankbk.network.ae", "rules.financing.network.ae", "sdocuments.network.ae", "smartview.network.ae", "commercialcards.investbank.ae", "financing.network.ae", "network.global", "beta.network.ae", "orabanktg.network.ae", "posinventory.network.ae", "remotedesk.network.global", "apiportal.network.ae", "nimonitoringportal.network.global", "api.network.global", "orabankma.network.ae", "support.network.ae", "nilpmuat.network.ae", "token.network.ae", "www.nigeria-beta.network.global", "nicorportal.ae", "api-dev.network.global", "api.network.ae", "notifications-prod.nicorportal.ae", "apply.network.ae", "login.smartviewdashboard.network.global"]
}

variable "emails" {
  type    = list(string)
  default = ["noreply@example.org"]
}

variable "activation_note" {
  type    = string
  default = "Activated by Terraform"
}

variable "network" {
  type    = string
  default = "STAGING"
}
