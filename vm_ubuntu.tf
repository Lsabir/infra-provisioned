resource "azurerm_linux_virtual_machine" "ubuntu_vm" {
  name                  = "${var.naming_prefix}-ubuntu-vm"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.location
  size                  = "Standard_B2s"
  admin_username        = "azureuser"
  network_interface_ids = ["${module.network.agent_subnet_id}"]

  admin_ssh_key {
    username   = "azureuser"
    public_key = "ssh-rsa AAAAB3...user@domain"
  }

  os_disk {
    name              = "${var.naming_prefix}-osdisk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb      = 30
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "22.04-LTS"
    version   = "latest"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}
