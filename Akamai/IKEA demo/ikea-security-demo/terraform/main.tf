provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = "emea_sec"
}

module "security" {
  source      = "./modules/security"
  hostnames   = var.hostnames
  name        = var.name
  description = var.description
  contract_id = var.contract_id
  group_name  = var.group_name
  geo_network_lists = var.geo_network_lists
  ip_network_lists = var.ip_network_lists
  rate_controls_bypass_list = var.rate_controls_bypass_list 
  client_reputation_bypass_list = var.client_reputation_bypass_list
}
