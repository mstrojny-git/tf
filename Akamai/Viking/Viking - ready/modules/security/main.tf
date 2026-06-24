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
  protected_hosts = [
        "static.viking.de",
        "viking-direct.co.uk",
        "www.viking-direkt.ch",
        "www.viking.de",
        "www.viking-direct.co.uk",
        "online.vikingoffice.nl",
        "static.vikingdirect.nl",
        "www.officedepot.eu",
        "online.vikingoffice.de",
        "www.viking-direct.be",
        "online.vikingoffice.be",
        "static.vikingdirekt.at",
        "www.vikingdirect.nl",
        "www.vikingdirect.be",
        "static.vikingdirect.ie",
        "online.vikingoffice.co.uk",
        "online.vikingoffice.ie",
        "online.officedepot.ie",
        "static.viking-direct.co.uk",
        "online.vikingoffice.ch",
        "www.viking-direct.lu",
        "www.vikingdirekt.at",
        "www.vikingdirect.ie",
        "www.vikingdirekt.ch"
        ]

  evaluated_hosts = []
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
}

resource "akamai_appsec_aap_selected_hostnames" "testing" {
  config_id = local.config_id
  protected_hosts = [
        "uat.vikingdirekt.at",
        "uat.viking-direct.lu",
        "perf.vikingoffice.pl",
        "perf.viking-direct.lu",
        "stag.viking-direct.co.uk",
        "uat.vikingdirect.be",
        "perf.vikingdirekt.at",
        "stag.viking.de",
        "uat.vikingdirect.nl",
        "uat.vikingdirect.ie",
        "uat.viking.de",
        "uat.vikingoffice.pl",
        "perf.viking.de",
        "uat.vikingdirekt.ch",
        "perf.vikingdirect.be",
        "perf.viking-direct.co.uk",
        "stag.vikingdirekt.at",
        "stag.vikingdirect.ie",
        "perf.vikingdirect.nl",
        "stag.vikingdirect.nl",
        "uat.viking-direct.co.uk",
        "perf.vikingdirect.ie"
  ]
  evaluated_hosts = []
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
}


// Bypass network lists
/*resource "akamai_appsec_bypass_network_lists" "production" {
  config_id = local.config_id
  security_policy_id = akamai_appsec_security_policy.production.security_policy_id
  bypass_network_list = ["76250_SECURITYBYPASSLIST","16656_CPISERVERS","14121_IMAGEMANAGERSERVERS"]
  }

resource "akamai_appsec_bypass_network_lists" "testing" {
  config_id = local.config_id
  security_policy_id = akamai_appsec_security_policy.testing.security_policy_id
  bypass_network_list = ["16656_CPISERVERS","14121_IMAGEMANAGERSERVERS"]
}*/