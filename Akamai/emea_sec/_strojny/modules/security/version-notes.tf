resource "akamai_appsec_version_notes" "version_notes" {
  config_id     = local.config_id
  version_notes = var.version_notes
}