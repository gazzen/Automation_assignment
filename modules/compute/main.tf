resource "azurerm_virtual_machine" "example" {
  name                  = "vm-${var.6807}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  vm_size               = var.vm_sku
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "4.1"
  }
  os_profile {
    computer_name  = "example-vm"
    admin_username = "suwgajen"
    admin_password = "Gazen123@"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  network_interface_ids = [azurerm_network_interface.example.id]
}

output "compute_output" {
  value = {
    vm_id = azurerm_virtual_machine.example.id
  }
}
