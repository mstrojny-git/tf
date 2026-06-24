resource "akamai_botman_transactional_endpoint" "igift_ingka_d875d009-cf78-4524-a709-1406491bdbd1" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  operation_id       = "d875d009-cf78-4524-a709-1406491bdbd1"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 882157,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "igift_ingka_320e442c-77a8-483f-937b-107516657042" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  operation_id       = "320e442c-77a8-483f-937b-107516657042"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 882157,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "igift_ingka_b1d3a15f-1ed1-4db2-bbc9-5b96985c5e84" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  operation_id       = "b1d3a15f-1ed1-4db2-bbc9-5b96985c5e84"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 882157,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "igift_ingka_4a60b40e-b4dc-4d4e-b3b9-008d22fb9043" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  operation_id       = "4a60b40e-b4dc-4d4e-b3b9-008d22fb9043"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 882157,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "igift_ingka_39a11b9d-5286-41f1-9776-0e4f5d16a415" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  operation_id       = "39a11b9d-5286-41f1-9776-0e4f5d16a415"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 882157,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_bot_category_exception" "igift_ingka" {
  config_id          = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  security_policy_id = akamai_botman_bot_management_settings.igift_ingka.security_policy_id
  bot_category_exception = jsonencode(
    {
      "customBotCategoryIds" : [
        "4a0f4413-c5e0-4c1d-9d59-928ffd5cc78f"
      ]
    }
  )
}

resource "akamai_botman_transactional_endpoint" "generictestalertonly_a273f2b6-0193-4425-b9ad-0cd1ce260cd6" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.generictestalertonly.security_policy_id
  operation_id       = "a273f2b6-0193-4425-b9ad-0cd1ce260cd6"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 831956,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "asisonline_e4a66867-c84e-492e-8b1a-9177ae17246a" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.asisonline.security_policy_id
  operation_id       = "e4a66867-c84e-492e-8b1a-9177ae17246a"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 913220,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : false
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "enabled" : true
        }
      },
      "traffic" : {
        "standardTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "www_ingka_ec2d44be-0b2f-4495-93cb-1310074d5b12" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.www_ingka.security_policy_id
  operation_id       = "ec2d44be-0b2f-4495-93cb-1310074d5b12"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 719802,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : false
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "enabled" : true
        }
      },
      "traffic" : {
        "standardTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "spareparts_6d83ca4b-424c-4d78-981b-9eb20ddc8350" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.spareparts.security_policy_id
  operation_id       = "6d83ca4b-424c-4d78-981b-9eb20ddc8350"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 903255,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "spareparts_8040befd-a796-4c2b-9154-fc7c09757384" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.spareparts.security_policy_id
  operation_id       = "8040befd-a796-4c2b-9154-fc7c09757384"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 903255,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "deny",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "deny",
          "aggressiveThreshold" : 96,
          "overrideThresholds" : true,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_bot_category_exception" "spareparts" {
  config_id          = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  security_policy_id = akamai_botman_bot_management_settings.spareparts.security_policy_id
  bot_category_exception = jsonencode(
    {
      "customBotCategoryIds" : [
        "18eadbcb-57db-4f2e-8621-7732d1506296"
      ]
    }
  )
}

resource "akamai_botman_transactional_endpoint" "buyback_26ababb4-8712-4e7d-8768-ab2f4a764828" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.buyback.security_policy_id
  operation_id       = "26ababb4-8712-4e7d-8768-ab2f4a764828"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 835193,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "service_offer_a273f2b6-0193-4425-b9ad-0cd1ce260cd6" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.service_offer.security_policy_id
  operation_id       = "a273f2b6-0193-4425-b9ad-0cd1ce260cd6"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 831956,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

resource "akamai_botman_transactional_endpoint" "service_offer_fffe1414-4fcd-4ad3-b3a3-54872da95d80" {
  config_id          = akamai_botman_transactional_endpoint_protection.transactional_endpoint_protection.config_id
  security_policy_id = akamai_botman_bot_management_settings.service_offer.security_policy_id
  operation_id       = "fffe1414-4fcd-4ad3-b3a3-54872da95d80"
  transactional_endpoint = jsonencode(
    {
      "apiEndPointId" : 852004,
      "telemetryTypeStates" : {
        "inline" : {
          "enabled" : true
        },
        "nativeSdk" : {
          "disabledAction" : "monitor",
          "enabled" : false
        },
        "standard" : {
          "disabledAction" : "monitor",
          "enabled" : false
        }
      },
      "traffic" : {
        "inlineTelemetry" : {
          "aggressiveAction" : "monitor",
          "aggressiveThreshold" : 90,
          "overrideThresholds" : false,
          "strictAction" : "monitor",
          "strictThreshold" : 50
        }
      }
    }
  )
}

