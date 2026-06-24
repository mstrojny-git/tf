resource "akamai_botman_custom_bot_category" "allowed_39e23449-6d3e-43e5-bedf-f58687796270" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Allowed"
    }
  )
}

resource "akamai_botman_custom_bot_category" "denied_bots_55b30381-8920-47d5-b2e6-0f3ba917dd12" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "Denied bots"
    }
  )
}

resource "akamai_botman_custom_bot_category" "partner_bots_fc377e08-7678-4012-a5b1-d2e8367ce558" {
  config_id = local.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "partner bots"
    }
  )
}

resource "akamai_botman_custom_bot_category_sequence" "custom_bot_category_sequence" {
  config_id    = local.config_id
  category_ids = [akamai_botman_custom_bot_category.allowed_39e23449-6d3e-43e5-bedf-f58687796270.category_id, akamai_botman_custom_bot_category.partner_bots_fc377e08-7678-4012-a5b1-d2e8367ce558.category_id, akamai_botman_custom_bot_category.denied_bots_55b30381-8920-47d5-b2e6-0f3ba917dd12.category_id]
}

resource "akamai_botman_custom_defined_bot" "missing_headers_697d1f61-3e9e-44ff-bf43-e91bc993636f" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "Missing headers",
      "categoryId" : "55b30381-8920-47d5-b2e6-0f3ba917dd12",
      "conditions" : [
        {
          "name" : [
            "header_1"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderCondition"
        },
        {
          "name" : [
            "header_2"
          ],
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestHeaderCondition"
        }
      ]
    }
  )
}

