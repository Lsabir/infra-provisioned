output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.rg.name
}

output "vnet_id" {
  description = "ID of the created virtual network."
  value       = module.network.vnet_id
}

output "agent_subnet_id" {
  description = "ID of the agent subnet."
  value       = module.network.agent_subnet_id
}
