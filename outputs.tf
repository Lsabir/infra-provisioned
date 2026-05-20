output "vm_id" {
  description = "The ID of the created virtual machine."
  value       = azurerm_linux_virtual_machine.example_dev_vm.id
}

output "vm_name" {
  description = "The name of the created virtual machine."
  value       = azurerm_linux_virtual_machine.example_dev_vm.name
}

output "resource_group_name" {
  description = "The name of the resource group."
  value       = azurerm_resource_group.example_rg.name
}