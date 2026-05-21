output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.networking.name
}

output "virtual_network_name" {
  description = "The name of the virtual network."
  value       = azurerm_virtual_network.vnet_private.name
}

output "subnet_name" {
  description = "The name of the private subnet."
  value       = azurerm_subnet.subnet_private.name
}
