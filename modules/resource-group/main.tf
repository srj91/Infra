resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.rg_location
  tags = var.global_tags
}

#--- Outputs
output "id" {
  value = azurerm_resource_group.rg.id
}

output "name" {
  value = azurerm_resource_group.rg.name
}