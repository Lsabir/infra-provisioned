output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the virtual machine."
  value       = azurerm_virtual_machine.vm.name
}

output "vm_private_ip" {
  description = "The private IP address of the virtual machine."
  value       = azurerm_virtual_machine.vm.private_ip_address
}
