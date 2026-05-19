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

variable "network_address_space" {
  description = "Address space for the virtual network."
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet."
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine."
  type        = string
}

variable "vm_os" {
  description = "Operating system for the virtual machine."
  type        = string
}

variable "vm_admin_username" {
  description = "Admin username for the virtual machine."
  type        = string
}

variable "vm_disk_size_gb" {
  description = "Disk size in GB for the virtual machine."
  type        = number
}

variable "storage_account_tier" {
  description = "Tier of the storage account."
  type        = string
}

variable "storage_account_replication_type" {
  description = "Replication type for the storage account."
  type        = string
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
  description = "Key for the Terraform backend."
  type        = string
}
