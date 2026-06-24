resource "akamai_appsec_configuration" "config" {
  name        = var.name
  description = var.description
  contract_id = var.contract_id
  group_id    = trimprefix(data.akamai_group.group.id, "grp_")
  host_names  = var.hostnames
}

data "akamai_group" "group" {
  group_name  = var.group_name
  contract_id = var.contract_id
}

locals {
  config_id = akamai_appsec_configuration.config.config_id
}

output "config_id" {
  value = local.config_id
}


// AAP selected hostnames
resource "akamai_appsec_aap_selected_hostnames" "production" {
  config_id = local.config_id
  protected_hosts = ["testpostrelease.5june.konaqa.com"]
  //protected_hosts = ["testpostrelease.5june.konaqa.com"]
  evaluated_hosts = []
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
}

resource "akamai_appsec_aap_selected_hostnames" "testing" {
  config_id = local.config_id
  protected_hosts = ["www.sbd222.konaqa.com"]
  evaluated_hosts = []
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
}


// Bypass network lists
resource "akamai_appsec_bypass_network_lists" "production" {
  config_id = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  bypass_network_list = ["238673_SECURITYBYPASSLIST"]
  //bypass_network_list = ["76250_SECURITYBYPASSLIST","16656_CPISERVERS","14121_IMAGEMANAGERSERVERS"]
  }

resource "akamai_appsec_bypass_network_lists" "testing" {
  config_id = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  bypass_network_list = ["238673_SECURITYBYPASSLIST"]
  //bypass_network_list = ["16656_CPISERVERS","14121_IMAGEMANAGERSERVERS"]
}