output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.main.name
}

output "virtual_network_id" {
  description = "The ID of the virtual network."
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "The ID of the default subnet."
  value       = azurerm_subnet.default.id
}

output "network_interface_id" {
  description = "The ID of the network interface."
  value       = azurerm_network_interface.main.id
}

output "virtual_machine_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.main.id
}
