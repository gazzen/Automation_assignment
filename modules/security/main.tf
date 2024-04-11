// Define network security groups, security rules, etc.
resource "azurerm_network_security_group" "assignment" {
  name                = "assignment-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "assignment-rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
