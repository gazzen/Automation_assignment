resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    Assignment    = "CCGC 5502 Automation Assignment"
    Name          = "firstname.lastname"
    ExpirationDate = "2024-12-31"
    Environment   = var.Learning
  }
}
