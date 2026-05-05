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

variable "subnets" {
  description = "List of subnets to create within the virtual network. Each subnet should have a name and an address_prefix."
  type = list(
    object({
      name           = string
      address_prefix = string
    })
  )
}

variable "backend_resource_group_name" {
  description = "Resource group name for the Terraform backend."
  type        = string
}

variable "backend_storage_account_name" {
  description = "Storage account name for the Terraform backend."
  type        = string
}

variable "backend_container_name" {
  description = "Container name for the Terraform backend."
  type        = string
}

variable "backend_key" {
  description = "Key for the Terraform backend state file."
  type        = string
}
