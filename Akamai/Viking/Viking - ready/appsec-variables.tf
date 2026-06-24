variable "group_name" {
  type    = string
  default = "Office Depot / Viking Direct-G-33J8FU1"
}

variable "contract_id" {
  type    = string
  default = "G-33J8FU1"
}

variable "name" {
  type    = string
  default = "Viking Security File"
}

variable "description" {
  type    = string
  default = "Created by Terraform"
}

variable "hostnames" {
  type    = list(string)
  default = ["online.vikingoffice.at"]
}

variable "emails" {
  type    = list(string)
  default = []
}

variable "activation_note" {
  type    = string
  default = "Activated by Terraform"
}

variable "network" {
  type    = string
  default = "STAGING"
}
