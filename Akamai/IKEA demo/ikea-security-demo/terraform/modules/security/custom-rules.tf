resource "akamai_appsec_custom_rule" "block_nuclei_scanning_tool_60082020" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "Nuclei - Open-source project*",
            "Fuzz Faster*",
            "*Sqlmap*"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ],
      "description" : "Nuclei - Open-source project* \u0026 other scanning useragents",
      "name" : "Block Nuclei scanning tool",
      "operation" : "AND",
      "tag" : [
        "Nuclei"
      ]
    }
  )
}
