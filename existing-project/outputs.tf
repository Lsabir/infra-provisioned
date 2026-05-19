output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.vm.id
}

output "vm_private_ip" {
  description = "The private IP address of the virtual machine."
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "vm_nic_id" {
  description = "The ID of the network interface attached to the VM."
  value       = azurerm_network_interface.vm_nic.id
}

output "ubuntu_vm_id" {
  description = "The ID of the Ubuntu virtual machine."
  value       = azurerm_virtual_machine.ubuntu_vm.id
}
