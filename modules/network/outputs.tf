output "vnet_id" {
  description = "Virtual network ID created by the module."
  value       = azurerm_virtual_network.vnet.id
}

output "agent_subnet_id" {
  description = "Agent subnet ID created by the module."
  value       = azurerm_subnet.agent_subnet.id
}
