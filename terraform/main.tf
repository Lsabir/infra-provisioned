resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "private-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = "vnet-existing"
  address_prefixes     = ["10.0.2.0/24"]
  depends_on           = [azurerm_resource_group.rg]
}
