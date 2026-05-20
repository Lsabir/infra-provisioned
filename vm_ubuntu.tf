resource "azurerm_linux_virtual_machine" "ubuntu_vm" {
  name                  = "${var.naming_prefix}-ubuntu-vm"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.location
  size                  = "Standard_B2s"
  admin_username        = "azureuser"
  network_interface_ids = [module.network.agent_subnet_id]

  admin_ssh_key {
    username   = "azureuser"
    public_key = var.ssh_public_key
  }

  os_disk {
    name              = "${var.naming_prefix}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  storage_data_disk {
    name              = "${var.naming_prefix}-datadisk1"
    lun               = 0
    caching           = "ReadWrite"
    create_option     = "Empty"
    disk_size_gb      = 32
  }

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}
