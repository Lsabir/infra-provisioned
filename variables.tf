variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "swedencentral"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "infra-provisioned-rg"
}

variable "naming_prefix" {
  description = "Prefix for created resources."
  type        = string
  default     = "infra-prov"
}

variable "environment" {
  description = "Logical environment tag."
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner tag value."
  type        = string
  default     = "devops-team"
}

variable "common_tags" {
  description = "Additional tags for all resources."
  type        = map(string)
  default     = {}
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "subnet_prefix" {
  description = "Subnet prefix for the agent subnet."
  type        = string
  default     = "10.1.1.0/24"
}

variable "admin_ip_cidr" {
  description = "CIDR range allowed to reach the VM or services."
  type        = string
  default     = "0.0.0.0/0"
}
