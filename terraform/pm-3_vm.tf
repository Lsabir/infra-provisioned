resource "azurerm_linux_virtual_machine" "ubuntu_vm" {
  name                = "${var.naming_prefix}-ubuntu-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2s"
  admin_ssh_key {
    username   = "azureuser"
    public_key = var.ssh_public_key
  }
  network_interface_ids = [
    azurerm_network_interface.vm_nic.id
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 30
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  tags = merge(var.common_tags, {
    environment = var.environment
  })
}

resource "azurerm_network_interface" "vm_nic" {
  name                = "${var.naming_prefix}-vm-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.agent.id
    private_ip_address_allocation = "Dynamic"
  }
  tags = merge(var.common_tags, {
    environment = var.environment
  })
}