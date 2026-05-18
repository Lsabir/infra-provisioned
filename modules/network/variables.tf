variable "resource_group_name" {
  description = "Resource group name used by the network module."
  type        = string
}

variable "location" {
  description = "Azure location used by the network module."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "subnet_prefix" {
  description = "Address prefix for the agent subnet."
  type        = string
}

variable "admin_ip_cidr" {
  description = "CIDR range allowed to reach the agent subnet."
  type        = string
  default     = "0.0.0.0/0"
}

variable "tags" {
  description = "Tags applied to all network resources."
  type        = map(string)
  default     = {}
}
