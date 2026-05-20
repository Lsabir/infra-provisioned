variable "naming_prefix" {
  description = "Prefix for naming resources."
  type        = string
  default     = "example-dev"
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "germanywestcentral"
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {
    project     = "example-project"
    environment = "dev"
    owner       = "devops-team"
  }
}

variable "admin_username" {
  description = "Admin username for the virtual machine."
  type        = string
  default     = "adminuser"
}

variable "ssh_key_path" {
  description = "Path to the SSH public key to use for the virtual machine."
  type        = string
  default     = "path-to-ssh-public-key"
}

variable "existing_network_interface_id" {
  description = "ID of the existing network interface to attach to the VM."
  type        = string
}

variable "existing_storage_account_id" {
  description = "ID of the existing storage account to use for the VM."
  type        = string
}