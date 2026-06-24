resource "akamai_appsec_match_target" "website_4346205" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "pmp-metrics.ingkadt.com",
        "console.upptacka.ingka.com",
        "console.upptacka.ingkadt.com",
        "mywork-ppe.ingka.com",
        "one.ugc.ingka.com",
        "lb.dev.customeradmin.customer.ingka.com",
        "dev.sa.ingka.com",
        "staging.iloff.ingka.com",
        "handraiser-admin.ingka.com",
        "customeradmin.customer.ingka.com",
        "lb.test.customeradmin.customer.ingka.com",
        "vetlanda.ingka.com",
        "kategorisera.ingkadt.com",
        "metal-model.cybersec.ingka.com",
        "business-api.dev.customeradmin.customer.ingka.com",
        "*.vetlanda.ingkadt.com",
        "dev.oc.ingka.com",
        "stage.atkomst.ingka.com",
        "coworker.prod.store-events.ingka.com",
        "coworker.buyback.test.cir.ingka.com",
        "dev.upptacka.ingkadt.com",
        "one.dev-ugc.ingka.com",
        "backoffice.buyback.prod.cir.ingka.com",
        "dev.console.upptacka.ingkadt.com",
        "bas.ingka.com",
        "pdf-services.dev.customeradmin.customer.ingka.com",
        "dev-cma.ingka.com",
        "customeradmin.test.customer.ingka.com",
        "iloff.ingka.com",
        "prod.soim.ingka.com",
        "business.dev.customeradmin.customer.ingka.com",
        "private.dev.customeradmin.customer.ingka.com",
        "backoffice.buyback.test.cir.ingka.com",
        "test.b2bda.ingkadt.com",
        "dev.slm.ingka.com",
        "coworker.buyback.prod.cir.ingka.com",
        "martin-test123.ingka.com",
        "slm.ingka.com",
        "metal-model.staging.cybersec.ingka.com",
        "mywork.ingka.com",
        "observera.ingka.com",
        "customer.prod.store-events.ingka.com",
        "jserroringest.ingka.com",
        "ppe.boka.ingka.com",
        "dev.b2bda.ingkadt.com",
        "dev.kappla.ingka.com",
        "kappla.ingka.com",
        "stage.slm.ingka.com",
        "api.buyback.prod.cir.ingka.com",
        "private-api.dev.customeradmin.customer.ingka.com",
        "api-gw.test.customer.ingka.com",
        "dev-handraiser-admin.ingka.com",
        "main.buyback.prod.cir.ingka.com",
        "dev.instore.ingkadt.com",
        "expresscheckout.ingka.com",
        "skapa.ikea.net",
        "metal-model.dev.cybersec.ingka.com",
        "admin.pip.ingka.com",
        "jshealthcheck.ingka.com",
        "api-gw.dev.customer.ingka.com",
        "stageipm-backend.ingkadt.com",
        "testicow.accounts.ingka.com",
        "lb.prod.customeradmin.customer.ingka.com",
        "api.buyback.test.cir.ingka.com",
        "cma.ingka.com",
        "ebv.prod.oc.ingka.com",
        "test-cma.ingka.com",
        "customeradmin.dev.customer.ingka.com",
        "main.buyback.test.cir.ingka.com",
        "devipm-backend.ingka.com",
        "order-info-config.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.genericingkaalertonly.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_4258675" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "videomeeting.stage.ingkadt.com",
        "pdf-services.test.customeradmin.customer.ingka.com",
        "b2bda.ingka.com",
        "business.test.customeradmin.customer.ingka.com",
        "expresscheckoutdev.ingkadt.com",
        "boka.ingka.com",
        "test.kappla.ingka.com",
        "foodbox.food-test.ingka.com",
        "foodbox.food.ingka.com",
        "vetlanda.ingkadt.com",
        "cms.ingka.com",
        "icccache.ingkadt.com",
        "test.bcw.ingka.com",
        "cms.ingkadt.com",
        "dev-lotta.ingka.com",
        "ifst.ingka.com",
        "videomeeting.ingkadt.com",
        "ifst.ingkadt.com",
        "circular.ingka.com",
        "dbt.ingka.com",
        "stage-lotta.ingka.com",
        "business-api.test.customeradmin.customer.ingka.com",
        "private.test.customeradmin.customer.ingka.com",
        "lotta.ingka.com",
        "foodbox.food-stage.ingka.com",
        "admin.upptacka.ingkadt.com",
        "dbt-docs.ingka.com",
        "private-api.test.customeradmin.customer.ingka.com",
        "coworker.test.store-events.ingka.com",
        "customer.test.store-events.ingka.com",
        "icccache.ingka.com",
        "imd.ingka.com",
        "videomeeting.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.genericingkadeny.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_3942684" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "www.ingka.com",
        "annualreport.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.www_ingka.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_3942688" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "igift-bo.ingka.com",
        "igift-bo.test.ingkadt.com",
        "igift.ingka.com",
        "igift.test.ingkadt.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.igift_ingka.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_3942691" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "stage-datacatalog.ingka.com",
        "datacatalog.ingka.com",
        "dev-datacatalog.ingka.com",
        "test-datacatalog.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "25720_IKEA3RDPARTYBYPASS",
          "name" : "IKEA-3rdParty-Bypass"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.datacatalog.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_3955615" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "dev-cusmasps.ingka.com",
        "test-cusmasps.ingka.com",
        "stage-cusmasps.ingka.com",
        "cusmasps.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : true,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.cusmasps.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_4034785" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "stage.loyalty-service.ingka.com",
        "prod.loyalty-service.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.prodloyalty.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_4034792" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "uth.ingka.com",
        "uth-dev.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.uthingka.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5409387" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "testicow.accounts.ingka.com",
        "icow.accounts.ingka.com",
        "stagicow.accounts.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        },
        {
          "id" : "62773_RATECONTROLWHITELISTJIRA",
          "name" : "Not in use"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.oauthcoworkers.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5528657" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "ppe.iquote.ingka.com",
        "static-dev.iquote.ingka.com",
        "stage.iquote.ingka.com",
        "cte.iquote.ingka.com",
        "static-contents.iquote.ingka.com",
        "test.iquote.ingka.com",
        "ux.iquote.ingka.com",
        "iquote.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.iquote.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5633372" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "pocca.dev.cybersec.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.generictestalertonly.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5748482" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "api.serviceoffers.ingka.com",
        "staging.api.serviceoffers.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.service_offer.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5822049" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "delta.dev.ingkadt.com",
        "delta.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.delta.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5822177" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "publicera.ingka.com",
        "publicera.cte.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.publicera.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5822186" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "cte.salesassistant.ingka.com",
        "dev.salesassistant.ingka.com",
        "salesassistant.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.salesassistant.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5822198" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "coworker.prod.store-events.ingka.com",
        "coworker.test.store-events.ingka.com",
        "customer.test.store-events.ingka.com",
        "customer.prod.store-events.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.storeevents.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5822202" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "api.buyback.cir.ingka.com",
        "coworker.buyback.cir.ingka.com",
        "backoffice.buyback.cir.ingka.com",
        "preview.buyback.cir.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.buyback.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_5822208" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "shop.asisonline.cir.ingka.com",
        "shop.asisonline.test.cir.ingka.com",
        "storage.asisonline.cir.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.asisonline.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_6300100" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "admin.upptacka.ingkadt.com",
        "dev.admin.upptacka.ingkadt.com",
        "upptacka.ingka.com",
        "dev.upptacka.ingkadt.com",
        "upptacka.ingkadt.com",
        "admin.upptacka.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "14121_IMAGEMANAGERSERVERS",
          "name" : "Image Manager Servers"
        },
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.upptacka.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_6871828" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "goods-movement-service.test.flytta.ingka.com",
        "test.flytta.ingka.com",
        "planning-service.flytta.ingka.com",
        "goods-movement-ui.test.flytta.ingka.com",
        "planning-service.dev.flytta.ingka.com",
        "planning-service.stage.flytta.ingka.com",
        "planning-service.test.flytta.ingka.com",
        "dev.flytta.ingka.com",
        "planning-ui.dev.flytta.ingka.com",
        "planning-ui.test.flytta.ingka.com",
        "planning-ui.flytta.ingka.com",
        "goods-movement-service.flytta.ingka.com",
        "goods-movement-service.dev.flytta.ingka.com",
        "stage.flytta.ingka.com",
        "goods-movement-ui.flytta.ingka.com",
        "goods-movement-service.stage.flytta.ingka.com",
        "flytta.ingka.com",
        "goods-movement-ui.dev.flytta.ingka.com",
        "goods-movement-ui.stage.flytta.ingka.com",
        "planning-ui.stage.flytta.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.flytta.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7243267" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "cat-mfe.stage-lotta.ingka.com",
        "cat-mfe.dev-lotta.ingka.com",
        "cat-mfe.lotta.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.lotta.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7271226" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "lobby.ukapps.ingka.com",
        "nda.ukapps.ingka.com",
        "ifabric.ukapps.ingka.com",
        "igrafik.ukapps.ingka.com",
        "baywatch.ukapps.ingka.com",
        "jackpot.ukapps.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.ukapps.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7271310" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "prototype.data.ingka.com",
        "data.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.dataapp.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7271311" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "dor.food-stage.ingka.com",
        "dor.food.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.dorfood.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7271323" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "fs-attract-api.ikeadt.com",
        "fs-attract-api.ikea.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.fsattract.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7271343" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "nfw.ingka.com",
        "nfw.cte.ingkadt.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.nfwapp.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7271981" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "dev.atkomst.ingka.com",
        "atkomst.ingka.com",
        "stage.atkomst.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.atkomst.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7291284" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "api.prod.apo.ingka.com",
        "api.test.apo.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "bypassNetworkLists" : [
        {
          "id" : "54172_PENETRATIONTESTBYPASS",
          "name" : "Penetration Test-BYPASS"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.spareparts.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7600468" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "live-preview.skapa.ikeadt.net",
        "react.skapa.ikeadt.net",
        "ios.skapa.ikeadt.net",
        "webc.skapa.ikeadt.net",
        "skapa.ikeadt.net",
        "android.skapa.ikeadt.net",
        "cms.skapa.ikeadt.net",
        "vue.skapa.ikeadt.net"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.skapa.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7609186" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "optimera.ingkadt.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.optimera.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7616445" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "api-gw.customer.ingka.com",
        "framework.customer.ingka.com",
        "framework.dev.customer.ingka.com",
        "translations.customeradmin.customer.ingka.com",
        "framework.test.customer.ingka.com",
        "business.prod.customeradmin.customer.ingka.com",
        "private.prod.customeradmin.customer.ingka.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.customerapp.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7616589" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "baseline.ingka.dev",
        "dev.baseline.ingka.dev"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.engineeringbaseline.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_7616616" {
  config_id = akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "reside.ikeadt.net",
        "reside.ikea.net"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.reside.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
