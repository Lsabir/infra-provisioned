variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "example-rg"
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "swedencentral"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {
    environment = "dev"
    team        = "engineering"
  }
}

variable "naming_prefix" {
  description = "Prefix for naming resources."
  type        = string
  default     = "example"
}


variable "environment" {
  default = "dev"
}