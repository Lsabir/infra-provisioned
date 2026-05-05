resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg"
  location = var.location
  tags     = local.tags
}

# Local definition for tags
locals {
  tags = var.tags
}

# Virtual Network Module
module "vnet" {
  source              = "Azure/vnet/azurerm"
  version             = "~> 3.0"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = var.vnet_address_space

  subnets = var.subnets

  tags = local.tags
}
