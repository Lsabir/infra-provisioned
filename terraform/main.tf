resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.naming_prefix}-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]

  tags = merge(var.tags, {
    project = "infra-provisioned"
    owner   = "devops-team"
  })
}

resource "azurerm_subnet" "private" {
  name                 = "${var.naming_prefix}-private-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_resource_group" "projet_dev_rg" {
  name     = "projet-dev-rg"
  location = var.location
  tags     = merge(var.tags, {
    project = "add-vnet-subnet",
    owner   = "devops-team"
  })
}

resource "azurerm_virtual_network" "projet_dev_vnet" {
  name                = "projet-dev-vnet"
  location            = azurerm_resource_group.projet_dev_rg.location
  resource_group_name = azurerm_resource_group.projet_dev_rg.name
  address_space       = ["10.1.0.0/16"]

  tags = merge(var.tags, {
    project = "add-vnet-subnet",
    owner   = "devops-team"
  })
}

resource "azurerm_subnet" "projet_dev_private_subnet" {
  name                 = "projet-dev-private-subnet"
  resource_group_name  = azurerm_resource_group.projet_dev_rg.name
  virtual_network_name = azurerm_virtual_network.projet_dev_vnet.name
  address_prefixes     = ["10.1.1.0/24"]
}