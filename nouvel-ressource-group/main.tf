locals {
  tags = var.tags
}

# Resource Group
resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg"
  location = var.location
  tags     = local.tags
}

# Virtual Network Module
module "vnet" {
  source              = "./modules/vnet"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = local.tags
}
