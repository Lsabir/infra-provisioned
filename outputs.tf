output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.main.name
}

output "vnet_id" {
  description = "The ID of the virtual network."
  value       = module.vnet.vnet_id
}

output "subnet_ids" {
  description = "The IDs of the subnets."
  value       = module.vnet.subnet_ids
}
