locals {
  tags = var.tags
}

# Resource Group
resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg"
  location = var.location
  tags     = local.tags
}

# Virtual Network
module "vnet" {
  source              = "Azure/vnet/azurerm"
  version             = "~> 3.0"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = var.vnet_address_space

  subnets = [
    for subnet in var.subnets : {
      name           = subnet.name
      address_prefix = subnet.address_prefix
    }
  ]

  tags = local.tags
}
