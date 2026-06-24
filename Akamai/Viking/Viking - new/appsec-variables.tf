variable "group_name" {
  type    = string
  default = "AAP_SelfServicability13-W-LT71FR"
}

variable "contract_id" {
  type    = string
  default = "W-LT71FR"
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
  default = ["test.amanda2.com"]
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
