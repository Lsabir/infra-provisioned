variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "germanywestcentral"
}

variable "prefix" {
  description = "Prefix for naming Azure resources."
  type        = string
  default     = "vmubuntu-dev"
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {
    project     = "vm-ubuntu-storage"
    environment = "dev"
    owner       = "devops-team"
  }
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

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
  default     = "default"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "vm_size" {
  description = "Size of the virtual machine."
  type        = string
  default     = "Standard_B2s"
}

variable "os" {
  description = "Operating system for the virtual machine."
  type        = string
  default     = "ubuntu-22.04"
}

variable "admin_username" {
  description = "Admin username for the virtual machine."
  type        = string
}

variable "disk_size_gb" {
  description = "Disk size in GB for the virtual machine."
  type        = number
  default     = 30
}

variable "storage_account_tier" {
  description = "Tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Replication type for the storage account."
  type        = string
  default     = "LRS"
}
