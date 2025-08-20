locals {
  container_names = [
    "str${lower(var.tenant)}${lower(var.environment)}",
    "${lower(var.tenant)}${lower(var.environment)}-db",
    "znode10",
    "z10-container",
    "z10-payment",
    "z10-plugin",
    "z10-data",
    "z10-resources"
  ]

  file_share_names = [
    "z10-mongofileshare",
    "z10-elasticfileshare"
  ]

}

resource "azurerm_storage_account" "strg"  {
  name                     = var.strg_name                      # 3-24, lowercase, alphanumeric only
  resource_group_name      = var.strg_rg_name
  location                 = var.strg_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  min_tls_version           = "TLS1_2"

  tags = {
    environment = var.environment
    tenant      = var.tenant
  }
}

resource "azurerm_storage_container" "strg_containers" {
  for_each          = toset(local.container_names)
  name              = each.value
  storage_account_id = azurerm_storage_account.strg.id
  container_access_type = "container" # Options: private, blob, container
}

resource "azurerm_storage_share" "strg_shares" {
  for_each          = toset(local.file_share_names)
  name              = each.value
  storage_account_id = azurerm_storage_account.strg.id
  quota             = 15 # Quota in GB
}
