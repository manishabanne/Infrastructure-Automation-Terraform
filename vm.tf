resource "azurerm_virtual_machine" "vm" {
  name                  = "MyVM"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  vm_size               = "Standard_DS1_v2"   # Corrected argument

  network_interface_ids = [azurerm_network_interface.nic.id]
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_os_disk {
    name              = "MyOSDisk"
    caching          = "ReadWrite"
    create_option    = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "myvm"
    admin_username = "azureuser"
    admin_password = "Password123!"  # Change to a secure password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
