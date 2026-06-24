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
  default = "_strojny"
}

variable "description" {
  type    = string
  default = "Created by Terraform"
}

variable "hostnames" {
  type    = list(string)
  default = ["101ea80c231c.mylabserver.com", "101ea80c232c.mylabserver.com"]
}

variable "emails" {
  type    = list(string)
  default = ["noreply@example.org"]
}

variable "activation_note" {
  type    = string
  default = "Terraform test"
}

variable "network" {
  type    = string
  default = ""
}

variable "version_notes" {
  type    = string
  default = ""
}