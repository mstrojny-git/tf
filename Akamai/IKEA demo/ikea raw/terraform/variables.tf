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
  default = "INGKA-DOMAINS-PROD"
}

variable "description" {
  type    = string
  default = "All ingka Domains WAF Security File"
}

variable "hostnames" {
  type    = list(string)
  default = ["goods-movement-service.test.flytta.ingka.com", "nfw.cte.ingkadt.com", "console.upptacka.ingka.com", "foodbox.food-test.ingka.com", "console.upptacka.ingkadt.com", "cat-mfe.lotta.ingka.com", "vetlanda.ingka.com", "staging.api.serviceoffers.ingka.com", "stage.atkomst.ingka.com", "videomeeting.ingkadt.com", "data.ingka.com", "coworker.prod.store-events.ingka.com", "coworker.buyback.test.cir.ingka.com", "bas.ingka.com", "lotta.ingka.com", "private-api.test.customeradmin.customer.ingka.com", "coworker.test.store-events.ingka.com", "customer.test.store-events.ingka.com", "webc.skapa.ikeadt.net", "backoffice.buyback.cir.ingka.com", "prod.soim.ingka.com", "baywatch.ukapps.ingka.com", "shop.asisonline.test.cir.ingka.com", "storage.asisonline.cir.ingka.com", "api-gw.customer.ingka.com", "b2bda.ingka.com", "test.b2bda.ingkadt.com", "martin-test123.ingka.com", "metal-model.staging.cybersec.ingka.com", "atkomst.ingka.com", "dev.flytta.ingka.com", "customer.prod.store-events.ingka.com", "ppe.boka.ingka.com", "dev.kappla.ingka.com", "dev.b2bda.ingkadt.com", "planning-ui.test.flytta.ingka.com", "cms.ingka.com", "kappla.ingka.com", "api-gw.test.customer.ingka.com", "flytta.ingka.com", "dev-handraiser-admin.ingka.com", "skapa.ikeadt.net", "reside.ikeadt.net", "icow.accounts.ingka.com", "translations.customeradmin.customer.ingka.com", "dbt.ingka.com", "business-api.test.customeradmin.customer.ingka.com", "private.test.customeradmin.customer.ingka.com", "vue.skapa.ikeadt.net", "dev-cusmasps.ingka.com", "dbt-docs.ingka.com", "ebv.prod.oc.ingka.com", "goods-movement-ui.flytta.ingka.com", "customeradmin.dev.customer.ingka.com", "main.buyback.test.cir.ingka.com", "prod.loyalty-service.ingka.com", "videomeeting.stage.ingkadt.com", "framework.dev.customer.ingka.com", "test-cusmasps.ingka.com", "pmp-metrics.ingkadt.com", "igift-bo.test.ingkadt.com", "cat-mfe.dev-lotta.ingka.com", "igift.test.ingkadt.com", "optimera.ingkadt.com", "icccache.ingkadt.com", "dev.sa.ingka.com", "staging.iloff.ingka.com", "handraiser-admin.ingka.com", "test.bcw.ingka.com", "framework.test.customer.ingka.com", "ifst.ingkadt.com", "goods-movement-ui.test.flytta.ingka.com", "dev.upptacka.ingkadt.com", "cms.skapa.ikeadt.net", "pdf-services.dev.customeradmin.customer.ingka.com", "uth.ingka.com", "reside.ikea.net", "iloff.ingka.com", "uth-dev.ingka.com", "igift.ingka.com", "private.dev.customeradmin.customer.ingka.com", "www.ingka.com", "lobby.ukapps.ingka.com", "publicera.ingka.com", "nda.ukapps.ingka.com", "slm.ingka.com", "foodbox.food.ingka.com", "observera.ingka.com", "goods-movement-service.dev.flytta.ingka.com", "stage.slm.ingka.com", "igift-bo.ingka.com", "api.buyback.prod.cir.ingka.com", "business.prod.customeradmin.customer.ingka.com", "dev-lotta.ingka.com", "cms.ingkadt.com", "ifst.ingka.com", "skapa.ikea.net", "dev.instore.ingkadt.com", "cat-mfe.stage-lotta.ingka.com", "metal-model.dev.cybersec.ingka.com", "dor.food-stage.ingka.com", "admin.pip.ingka.com", "jshealthcheck.ingka.com", "stage-lotta.ingka.com", "android.skapa.ikeadt.net", "api.prod.apo.ingka.com", "test-cma.ingka.com", "pocca.dev.cybersec.ingka.com", "devipm-backend.ingka.com", "imd.ingka.com", "jackpot.ukapps.ingka.com", "videomeeting.ingka.com", "vetlanda.ingkadt.com", "one.ugc.ingka.com", "lb.dev.customeradmin.customer.ingka.com", "stage.loyalty-service.ingka.com", "stagicow.accounts.ingka.com", "metal-model.cybersec.ingka.com", "business-api.dev.customeradmin.customer.ingka.com", "*.vetlanda.ingkadt.com", "planning-service.flytta.ingka.com", "salesassistant.ingka.com", "backoffice.buyback.prod.cir.ingka.com", "dev-cma.ingka.com", "live-preview.skapa.ikeadt.net", "fs-attract-api.ikeadt.com", "customeradmin.test.customer.ingka.com", "test.iquote.ingka.com", "business.dev.customeradmin.customer.ingka.com", "backoffice.buyback.test.cir.ingka.com", "dev.slm.ingka.com", "api.test.apo.ingka.com", "delta.dev.ingkadt.com", "ios.skapa.ikeadt.net", "dev.atkomst.ingka.com", "planning-service.test.flytta.ingka.com", "mywork.ingka.com", "dev.baseline.ingka.dev", "jserroringest.ingka.com", "stage.iquote.ingka.com", "private-api.dev.customeradmin.customer.ingka.com", "coworker.buyback.cir.ingka.com", "dev-datacatalog.ingka.com", "goods-movement-ui.stage.flytta.ingka.com", "expresscheckout.ingka.com", "stage-datacatalog.ingka.com", "planning-service.dev.flytta.ingka.com", "dev.salesassistant.ingka.com", "stageipm-backend.ingkadt.com", "planning-ui.dev.flytta.ingka.com", "testicow.accounts.ingka.com", "lb.prod.customeradmin.customer.ingka.com", "api.buyback.test.cir.ingka.com", "publicera.cte.ingka.com", "cte.iquote.ingka.com", "dor.food.ingka.com", "test-datacatalog.ingka.com", "goods-movement-ui.dev.flytta.ingka.com", "private.prod.customeradmin.customer.ingka.com", "planning-ui.stage.flytta.ingka.com", "order-info-config.ingka.com", "business.test.customeradmin.customer.ingka.com", "planning-service.stage.flytta.ingka.com", "igrafik.ukapps.ingka.com", "mywork-ppe.ingka.com", "ppe.iquote.ingka.com", "goods-movement-service.stage.flytta.ingka.com", "customeradmin.customer.ingka.com", "lb.test.customeradmin.customer.ingka.com", "kategorisera.ingkadt.com", "cusmasps.ingka.com", "prototype.data.ingka.com", "dev.oc.ingka.com", "baseline.ingka.dev", "api.serviceoffers.ingka.com", "one.dev-ugc.ingka.com", "dev.console.upptacka.ingkadt.com", "planning-ui.flytta.ingka.com", "api.buyback.cir.ingka.com", "datacatalog.ingka.com", "icccache.ingka.com", "fs-attract-api.ikea.com", "preview.buyback.cir.ingka.com", "ux.iquote.ingka.com", "test.flytta.ingka.com", "shop.asisonline.cir.ingka.com", "pdf-services.test.customeradmin.customer.ingka.com", "static-dev.iquote.ingka.com", "expresscheckoutdev.ingkadt.com", "coworker.buyback.prod.cir.ingka.com", "test.kappla.ingka.com", "boka.ingka.com", "upptacka.ingkadt.com", "cte.salesassistant.ingka.com", "goods-movement-service.flytta.ingka.com", "stage.flytta.ingka.com", "nfw.ingka.com", "ifabric.ukapps.ingka.com", "delta.ingka.com", "main.buyback.prod.cir.ingka.com", "react.skapa.ikeadt.net", "circular.ingka.com", "api-gw.dev.customer.ingka.com", "iquote.ingka.com", "foodbox.food-stage.ingka.com", "framework.customer.ingka.com", "cma.ingka.com", "upptacka.ingka.com", "stage-cusmasps.ingka.com"]
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
