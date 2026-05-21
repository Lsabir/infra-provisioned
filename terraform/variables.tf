variable "resource_group_name" {
  type    = string
  default = "example-rg"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "tags" {
  type    = map(string)
  default = {
    environment = "dev"
    team        = "engineering"
  }
}

variable "naming_prefix" {
  type    = string
  default = "example"
}