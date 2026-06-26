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
  default = ["mstrojny@akamai.com"]
}

variable "activation_note" {
  type    = string
  default = "Activated by Terraform"
}

variable "activate_to_staging" {
  description = "Set to true to directly activate on the staging network."
  type        = bool
  default     = false
}

variable "activate_to_production" {
  description = "Set to true to directly activate on the production network."
  type        = bool
  default     = false
}

variable "activation_to_staging_exists" {
  description = "Do not modify. Flag used together with the logic in the activation resources for the initial activation to staging."
  type        = bool
  default     = false
}

variable "activation_to_production_exists" {
  description = "Do not modify. Flag used together with the logic in the activation resources for the initial activation to production."
  type        = bool
  default     = false
}