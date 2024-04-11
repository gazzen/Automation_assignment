// Define storage accounts, blob containers, etc.
resource "azurerm_storage_account" "assignment" {
  name                     = "assignmentstorageaccount"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "assignment" {
  name                  = "assignment-container"
  storage_account_name  = azurerm_storage_account.assignment.name
  container_access_type = "private"
}
