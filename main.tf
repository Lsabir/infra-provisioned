locals {
  tags = merge({
    project     = var.environment
    environment = var.environment
    owner       = var.owner
  }, var.common_tags)
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vnet_name           = "${var.naming_prefix}-vnet"
  address_space       = var.vnet_address_space
  subnet_prefix       = var.subnet_prefix
  admin_ip_cidr       = var.admin_ip_cidr
  tags                = local.tags
}
