variable "location" {
  description = "Azure region."
  type        = string
  default     = "swedencentral"
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
  default     = "infra-provisioned-rg"
}

variable "environment" {
  description = "Environment tag."
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Tags applied to all resources."
  type        = map(string)
  default = {
    managed_by  = "terraform"
    environment = "dev"
  }
}
