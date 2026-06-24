resource "akamai_botman_javascript_injection" "fsattract" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.fsattract.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "igift_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "ALWAYS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "cusmasps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.cusmasps.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "generictestalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.generictestalertonly.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "skapa" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.skapa.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "asisonline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.asisonline.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "ukapps" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.ukapps.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "oauthcoworkers" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.oauthcoworkers.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "storeevents" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.storeevents.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "reside" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.reside.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "dataapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.dataapp.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "genericingkadeny" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.genericingkadeny.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "customerapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.customerapp.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "www_ingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.www_ingka.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "genericingkaalertonly" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.genericingkaalertonly.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "spareparts" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.spareparts.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "atkomst" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.atkomst.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "iquote" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.iquote.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "lotta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.lotta.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "publicera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.publicera.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "dorfood" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.dorfood.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "flytta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.flytta.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "buyback" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.buyback.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "datacatalog" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.datacatalog.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "prodloyalty" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.prodloyalty.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "upptacka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.upptacka.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "delta" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.delta.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "nfwapp" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.nfwapp.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "engineeringbaseline" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.engineeringbaseline.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "uthingka" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.uthingka.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "service_offer" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.service_offer.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "optimera" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.optimera.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

resource "akamai_botman_javascript_injection" "salesassistant" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_botman_bot_management_settings.salesassistant.security_policy_id
  javascript_injection = jsonencode(
    {
      "injectJavaScript" : "AROUND_PROTECTED_OPERATIONS",
      "rules" : []
    }
  )
}

