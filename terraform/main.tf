resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}


resource "azurerm_virtual_network" "vnet" {
  name                = "${var.naming_prefix}-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  
  tags = merge(var.tags, {
    project = "infra-provisioned"
    owner   = "devops-team"
  })
}

resource "azurerm_subnet" "subnet_private" {
  name                 = "subnet-private"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}