output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.ubuntu_vm.id
}

output "vm_name" {
  description = "The name of the virtual machine."
  value       = azurerm_virtual_machine.ubuntu_vm.name
}

output "vm_private_ip" {
  description = "The private IP address of the virtual machine."
  value       = azurerm_virtual_machine.ubuntu_vm.private_ip_address
}
