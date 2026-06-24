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
  default = ""
}

variable "description" {
  type    = string
  default = "All ingka Domains WAF Security File"
}

variable "hostnames" {
  type    = list(string)
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



//For ikea-purposes
variable "geo_network_lists" { 
  type = list(string)
  default = [""]
}

variable "ip_network_lists" { 
  type = list(string)
  default = [""]
}

variable "rate_controls_bypass_list" {
  type = list(string)
  default = [ "" ]
}

variable "client_reputation_bypass_list" {
  type = list(string)
  default = [""]
}
