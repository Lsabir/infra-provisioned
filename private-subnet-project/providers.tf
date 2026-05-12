terraform {
  required_version = ">= 1.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.90"
    }
  }

  backend "azurerm" {
    # Configure the following variables in your environment or tfvars file:
    # resource_group_name = "<RESOURCE_GROUP_NAME>"
    # storage_account_name = "<STORAGE_ACCOUNT_NAME>"
    # container_name = "<CONTAINER_NAME>"
    # key = "<STATE_FILE_KEY>"
  }
}

provider "azurerm" {
  features {}
}