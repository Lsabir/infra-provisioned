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

variable "os_disk_size_gb" {
  description = "Size of the OS disk in GB."
  type        = number
}

variable "data_disk_size_gb" {
  description = "Size of the data disk in GB."
  type        = number
}

variable "os_image" {
  description = "OS image to use for the virtual machine."
  type        = string
}

variable "existing_network_id" {
  description = "ID of the existing virtual network to use."
  type        = string
}

variable "existing_subnet_id" {
  description = "ID of the existing subnet to use."
  type        = string
}
