// Define Azure Active Directory resources, role assignments, etc.
resource "azurerm_role_assignment" "assignment" {
  scope              = azurerm_resource_group.assignment.id
  role_definition_id = data.azurerm_role_definition.assignment.id
  principal_id       = azurerm_user_assigned_identity.assignment.principal_id
}

data "azurerm_role_definition" "assignment" {
  name = "Contributor"
}
