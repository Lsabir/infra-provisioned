variable "prefix" {
  description = "Prefix for naming Azure resources."
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

variable "vm_size" {
  description = "Size of the virtual machine."
  type        = string
}

variable "os" {
  description = "Operating system for the virtual machine."
  type        = string
}

variable "storage_account_type" {
  description = "Storage account type for the VM OS disk."
  type        = string
}

variable "disk_size_gb" {
  description = "Size of the OS disk in GB."
  type        = number
}

variable "admin_username" {
  description = "Admin username for the virtual machine."
  type        = string
}

variable "authentication_type" {
  description = "Authentication type for the virtual machine (e.g., ssh)."
  type        = string
}

variable "network_interface" {
  description = "Name of the existing network interface to attach to the VM."
  type        = string
}
