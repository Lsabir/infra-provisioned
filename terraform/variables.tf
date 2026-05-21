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

variable "naming_prefix" {
  description = "Prefix for resource names."
  type        = string
  default     = "infra-prov"
}

variable "environment" {
  description = "Environment tag."
  type        = string
  default     = "dev"
}

variable "common_tags" {
  description = "Tags applied to all resources."
  type        = map(string)
  default = {
    managed_by = "agent-ia-devops"
    repo       = "infra-provisioned"
  }
}

variable "ssh_public_key" {
  description = "SSH public key (required when creating Linux VMs)."
  type        = string
  default     = ""
  sensitive   = true
}

variable "virtual_network_name" {
  description = "Name of the virtual network to associate with the subnet."
  type        = string
  default     = "vnet"
}
