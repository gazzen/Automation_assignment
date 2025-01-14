resource "azurerm_virtual_network" "example" {
  name                = "vnet-${var.last_4_humber_id}"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "example" {
  name                 = "subnet-${var.last_4_humber_id}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

output "networking_output" {
  value = {
    vnet_id   = azurerm_virtual_network.example.id
    subnet_id = azurerm_subnet.example.id
  }
}
