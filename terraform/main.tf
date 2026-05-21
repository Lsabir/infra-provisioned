resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = merge(var.common_tags, {
    environment = var.environment
  })
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "private-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.2.0/24"]
  tags = merge(var.common_tags, {
    project     = "infra-provisioned",
    environment = var.environment,
    owner       = "devops-team"
  })
}
