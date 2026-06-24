variable "name" {
  type = string
}

variable "hostnames" {
  type = list(string)
  default = [""]
}

variable "description" {
  type = string
}

variable "contract_id" {
  type = string
}

variable "group_name" {
  type = string
}




//For ikea-purposes
variable "geo_network_lists" { 
  type = list(string)
}

variable "ip_network_lists" { 
  type = list(string)
}
variable "rate_controls_bypass_list" {
  type = list(string)
}

variable "client_reputation_bypass_list" {
  type = list(string)
}
