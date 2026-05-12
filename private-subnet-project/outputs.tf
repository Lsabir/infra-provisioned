output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.main.name
}

output "vnet_id" {
  description = "The ID of the virtual network."
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "The ID of the private subnet."
  value       = azurerm_subnet.private.id
}