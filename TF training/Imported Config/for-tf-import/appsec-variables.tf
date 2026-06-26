variable "group_name" {
  type    = string
  default = "Akamai Professional Services-1-1NC95D"
}

variable "contract_id" {
  type    = string
  default = "ctr_1-1NC95D"
}

variable "name" {
  type    = string
  default = "for-tf-import"
}

variable "description" {
  type    = string
  default = "Config ready to be imported"
}

variable "hostnames" {
  type    = list(string)
  default = ["www.error_testing.com"]
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
