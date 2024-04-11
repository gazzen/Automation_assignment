output "networking_output" {
  value = {
    vnet_id   = azurerm_virtual_network.example.id
    subnet_id = azurerm_subnet.example.id
  }
}
