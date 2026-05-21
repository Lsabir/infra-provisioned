resource "azurerm_storage_account" "vm_storage" {
  name                     = "${var.naming_prefix}vmstorage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = merge(var.common_tags, {
    environment = var.environment
  })
}