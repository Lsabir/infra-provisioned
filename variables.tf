variable "naming_prefix" {
  description = "Prefix for naming resources."
  type        = string
  default     = "infra-dev"
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "germanywestcentral"
}

variable "environment" {
  description = "Environment for the deployment (e.g., dev, prod)."
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {
    project     = "infrastructure-networking"
    environment = "dev"
    owner       = "devops-team"
  }
}
