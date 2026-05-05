variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "germanywestcentral"
}

variable "prefix" {
  description = "Prefix for naming Azure resources."
  type        = string
  default     = "nouveauprojet-dev"
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
  default     = {
    project     = "nouveau-projet"
    environment = "dev"
    owner       = "devops-team"
  }
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "List of subnets to create in the virtual network."
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = [
    {
      name           = "subnet-principal"
      address_prefix = "10.0.1.0/24"
    }
  ]
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
