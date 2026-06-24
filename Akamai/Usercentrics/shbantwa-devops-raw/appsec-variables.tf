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
  default = "shbantwa-devops"
}

variable "description" {
  type    = string
  default = "Created by Terraform"
}

variable "hostnames" {
  type    = list(string)
  default = ["learn.shbantwa.xyz"]
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
