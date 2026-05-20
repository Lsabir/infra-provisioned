output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.ubuntu_vm.id
}

output "vm_public_ip" {
  description = "The public IP address of the virtual machine."
  value       = azurerm_network_interface.existing_network.private_ip_address
}

output "os_disk_id" {
  description = "The ID of the OS disk."
  value       = azurerm_virtual_machine.ubuntu_vm.storage_os_disk[0].id
}

output "data_disk_id" {
  description = "The ID of the data disk."
  value       = azurerm_virtual_machine.ubuntu_vm.storage_data_disk[0].id
}
