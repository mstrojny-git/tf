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
  default = "Bot Manager Config"
}

variable "description" {
  type    = string
  default = "Bot Manager Security Configuration"
}

variable "hostnames" {
  type    = list(string)
  default = ["*.grundfos.com"]
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
