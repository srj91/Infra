resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  admin_enabled = true
  tags = var.global_tags
  }

  output "acr_id" {
    description = "The ID of the Azure Container Registry."
    value       = azurerm_container_registry.acr.id
  }

  