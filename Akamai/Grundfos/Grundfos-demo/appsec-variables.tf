variable "group_name" {
  type    = string
  default = "EMEA Sec Services-M-26EUYKK"
}

variable "contract_id" {
  type    = string
  default = "M-26EUYKK"
}

variable "name" {
  type    = string
  default = "Grundfos - demo2"
}

variable "description" {
  type    = string
  default = ""
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
  default = "Activated by Terraform"
}

variable "network" {
  type    = string
  default = "STAGING"
}

variable "penalty-box" {
  type = string
  default = "none"
}