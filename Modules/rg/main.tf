resource "azurerm_resource_group" "rgs-axion" {
  for_each = var.rgs-axion
  name     = each.value.name
  location = each.value.location
}

