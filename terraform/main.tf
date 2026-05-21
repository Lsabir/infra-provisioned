resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "network_rg" {
  name     = "${var.naming_prefix}-rg"
  location = var.location
  tags     = merge(var.tags, {
    project = "infra-networking",
    owner   = "devops-team"
  })
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = "${var.naming_prefix}-vnet"
  location            = azurerm_resource_group.network_rg.location
  resource_group_name = azurerm_resource_group.network_rg.name
  address_space       = ["10.0.0.0/16"]
  tags                = merge(var.tags, {
    project = "infra-networking",
    owner   = "devops-team"
  })
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "${var.naming_prefix}-private-subnet"
  resource_group_name  = azurerm_resource_group.network_rg.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}