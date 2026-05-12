variable "prefix" {
  description = "Prefix for naming resources."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet."
  type        = string
}

variable "private_endpoint_network_policies_enabled" {
  description = "Enable or disable private endpoint network policies on the subnet."
  type        = bool
}

variable "private_link_service_network_policies_enabled" {
  description = "Enable or disable private link service network policies on the subnet."
  type        = bool
}