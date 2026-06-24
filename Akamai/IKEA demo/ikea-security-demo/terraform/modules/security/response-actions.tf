
resource "akamai_botman_conditional_action" "secureikeacom_conditional_actions_cond_action_75116" {
  config_id = akamai_appsec_configuration.config.config_id
  conditional_action = jsonencode(
    {
      "actionName" : "Secure.ikea.com Conditional Actions",
      "conditionalActionRules" : [
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/??/??/contact/local_*"
              ],
              "valueCase" : true,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            }
          ],
          "notes" : "local_ContactUs POST",
          "percentageOfTraffic" : 100
        },
        {
          "action" : "tarpit",
          "conditions" : [
            {
              "name" : [
                "Referer"
              ],
              "nameWildcard" : true,
              "positiveMatch" : true,
              "type" : "requestHeaderCondition",
              "value" : [
                "https://secure.ikea.com/webapp/wcs/stores/servlet/IrwAddUpdateGiftCards"
              ],
              "valueCase" : false,
              "valueWildcard" : true
            },
            {
              "positiveMatch" : true,
              "type" : "requestMethodCondition",
              "value" : [
                "POST"
              ]
            },
            {
              "positiveMatch" : true,
              "type" : "urlPatternCondition",
              "value" : [
                "/webapp/wcs/stores/servlet/IrwAddUpdateGiftCards"
              ],
              "valueCase" : false,
              "valueWildcard" : false
            }
          ],
          "notes" : "IrwAddUpdateGiftCards",
          "percentageOfTraffic" : 100
        }
      ],
      "defaultAction" : "monitor",
      "description" : "Used primarily on secure.ikea.com to protect certain resources, such as POST forms to email services"
    }
  )
}