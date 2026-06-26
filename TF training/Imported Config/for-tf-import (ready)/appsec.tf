module "security" {
  source      = "./modules/security"
  hostnames   = var.hostnames
  name        = var.name
  description = var.description
  contract_id = var.contract_id
  group_name  = var.group_name
}

module "activate-security" {
  source              = "./modules/activate-security"
  name                = var.name
  config_id           = module.security.config_id
  activate_to_staging             = var.activate_to_staging
  activation_to_staging_exists    = var.activation_to_staging_exists
  activate_to_production          = var.activate_to_production
  activation_to_production_exists = var.activation_to_production_exists
  notification_emails = var.emails
  note                = var.activation_note
  depends_on          = [module.security]
}