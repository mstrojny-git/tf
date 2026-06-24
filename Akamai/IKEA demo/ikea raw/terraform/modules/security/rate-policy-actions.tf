// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "fsattract_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "fsattract_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.fsattract.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "igift_ingka_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "igift_ingka_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "igift_ingka_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "igift_ingka_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "igift_ingka_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "igift_ingka_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "igift_ingka_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.igift_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "cusmasps_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "cusmasps_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "cusmasps_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "cusmasps_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "cusmasps_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "cusmasps_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.cusmasps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "generictestalertonly_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "generictestalertonly_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "generictestalertonly_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "generictestalertonly_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "generictestalertonly_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "generictestalertonly_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.generictestalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "skapa_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "skapa_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.skapa.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "asisonline_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "asisonline_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.asisonline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "ukapps_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "ukapps_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.ukapps.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "oauthcoworkers_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "oauthcoworkers_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "oauthcoworkers_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "oauthcoworkers_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "oauthcoworkers_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "oauthcoworkers_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.oauthcoworkers.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "storeevents_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "storeevents_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "storeevents_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "storeevents_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "storeevents_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "storeevents_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "storeevents_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "storeevents_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.storeevents.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "reside_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "reside_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.reside.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "dataapp_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dataapp_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dataapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "genericingkadeny_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "genericingkadeny_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "genericingkadeny_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "genericingkadeny_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "genericingkadeny_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "genericingkadeny_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkadeny_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkadeny.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "customerapp_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "customerapp_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.customerapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "www_ingka_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "www_ingka_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.www_ingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "genericingkaalertonly_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.genericingkaalertonly.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "spareparts_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "spareparts_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.spareparts.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "atkomst_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "atkomst_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "atkomst_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "atkomst_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "atkomst_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "atkomst_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "atkomst_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "atkomst_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "atkomst_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "atkomst_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.atkomst.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "iquote_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "iquote_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "iquote_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "iquote_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "iquote_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "iquote_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "iquote_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.iquote.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "lotta_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "lotta_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.lotta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "publicera_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "publicera_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.publicera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "dorfood_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "dorfood_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dorfood_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "dorfood_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "dorfood_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "dorfood_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "dorfood_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dorfood_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dorfood_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "dorfood_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.dorfood.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "flytta_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "flytta_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "flytta_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "flytta_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "flytta_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "flytta_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "flytta_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "flytta_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "flytta_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "flytta_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.flytta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "buyback_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "buyback_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "buyback_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "buyback_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "buyback_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "buyback_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "buyback_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "buyback_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.buyback.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "datacatalog_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "datacatalog_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "datacatalog_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "datacatalog_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "datacatalog_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "datacatalog_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "datacatalog_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.datacatalog.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "prodloyalty_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "prodloyalty_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "prodloyalty_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "prodloyalty_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "prodloyalty_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "prodloyalty_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "prodloyalty_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.prodloyalty.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "upptacka_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "upptacka_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "upptacka_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "upptacka_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "upptacka_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "upptacka_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.upptacka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "delta_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "delta_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "delta_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "delta_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "delta_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "delta_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "delta_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "delta_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.delta.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "nfwapp_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "nfwapp_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.nfwapp.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "engineeringbaseline_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "engineeringbaseline_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.engineeringbaseline.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "uthingka_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "uthingka_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "uthingka_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "uthingka_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "uthingka_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "uthingka_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "uthingka_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.uthingka.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "service_offer_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_abusecrawlercontrol_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.abusecrawlercontrol_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_email_abuse" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.email_abuse.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "service_offer_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "service_offer_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.service_offer.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "optimera_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "optimera_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "optimera_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "optimera_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "optimera_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "optimera_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.optimera.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

// Rate Policy Actions
resource "akamai_appsec_rate_policy_action" "salesassistant_denyddospost_put_delete_edge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddospost_put_delete_edge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_denybrute_force_protection__forward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denybrute_force_protection__forward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_denyddosorigin_errors_v6" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosorigin_errors_v6.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_denyddosedge_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosedge_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_denyddosforward_hits_v5" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddosforward_hits_v5.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_denyddos_404_v1" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.denyddos_404_v1.rate_policy_id
  ipv4_action        = "alert"
  ipv6_action        = "alert"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_ddosclientreputationsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

resource "akamai_appsec_rate_policy_action" "salesassistant_ddosclientreputationnonsharedip" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.salesassistant.security_policy_id
  rate_policy_id     = akamai_appsec_rate_policy.ddosclientreputationnonsharedip.rate_policy_id
  ipv4_action        = "deny"
  ipv6_action        = "deny"
}

