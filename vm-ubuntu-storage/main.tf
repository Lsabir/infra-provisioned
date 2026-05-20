locals {
  tags = var.tags
}

resource "azurerm_virtual_machine" "ubuntu_vm" {
  name                  = "${var.prefix}-ubuntu-vm"
  location              = var.location
  resource_group_name   = var.backend_resource_group_name
  network_interface_ids = ["/subscriptions/your-subscription-id/resourceGroups/your-resource-group/providers/Microsoft.Network/networkInterfaces/existing-network"]
  vm_size               = var.vm_size

  identity {
    type = "SystemAssigned"
  }

  os_profile {
    computer_name  = "${var.prefix}-ubuntu-vm"
    admin_username = var.admin_username
  }

  os_profile_linux_config {
    disable_password_authentication = true
  }

  storage_os_disk {
    name              = "${var.prefix}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = var.storage_account_type
    disk_size_gb      = var.disk_size_gb
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  tags = local.tags
}
