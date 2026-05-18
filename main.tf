resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg"
  location = var.location
  tags     = var.tags
}

locals {
  tags = var.tags
}

# Virtual Network Module
module "vnet" {
  source              = "./modules/vnet"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  prefix              = var.prefix
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = local.tags
}
