locals {
  tags = var.tags
}

resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.prefix}-vm"
  location              = var.location
  resource_group_name   = var.backend_resource_group_name
  network_interface_ids = [var.network_interface]
  vm_size               = var.vm_size

  identity {
    type = "SystemAssigned"
  }

  os_profile {
    computer_name  = "${var.prefix}-vm"
    admin_username = var.admin_username
  }

  os_profile_linux_config {
    disable_password_authentication = true
  }

  storage_os_disk {
    name              = "${var.prefix}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = var.storage_os_disk_size_gb
  }

  storage_data_disk {
    name              = "${var.prefix}-datadisk"
    lun               = 0
    caching           = "ReadWrite"
    create_option     = "Empty"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = var.storage_data_disk_size_gb
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  tags = local.tags
}
