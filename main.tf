resource "azurerm_linux_virtual_machine" "example_dev_vm" {
  name                  = "${var.naming_prefix}-vm"
  location              = var.location
  resource_group_name   = azurerm_resource_group.example_rg.name
  network_interface_ids = [var.existing_network_interface_id]
  size                  = "Standard_B2s"

  admin_username = var.admin_username
  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.ssh_key_path)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_resource_group" "example_rg" {
  name     = "${var.naming_prefix}-rg"
  location = var.location

  tags = var.tags
}