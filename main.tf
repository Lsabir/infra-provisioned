resource "azurerm_resource_group" "main" {
  name     = "${var.naming_prefix}-rg"
  location = var.location

  tags = var.tags
}

resource "azurerm_virtual_network" "vnet_private" {
  name                = "${var.naming_prefix}-vnet-private"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/16"]

  tags = var.tags
}

resource "azurerm_subnet" "subnet_private" {
  name                                          = "${var.naming_prefix}-subnet-private"
  resource_group_name                          = azurerm_resource_group.main.name
  virtual_network_name                         = azurerm_virtual_network.vnet_private.name
  address_prefixes                             = ["10.0.1.0/24"]
  private_endpoint_network_policies_enabled   = false
  private_link_service_network_policies_enabled = false
}
