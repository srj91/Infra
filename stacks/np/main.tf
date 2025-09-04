module "rg" {
  source      = "../../modules/resource-group"
  rg_name     = var.rg_name
  rg_location = var.location
  global_tags = var.global_tags
}

module "network" {
  source                 = "../../modules/network"
  vnet_name              = var.vnet_name
  vnet_address_space     = var.vnet_address_space
  rg_name                = module.rg.name
  rg_location            = var.location
  subnet_name            = var.subnet_name
  subnet_address_prefixes= var.subnet_prefixes
  global_tags            = var.global_tags
}

module "acr" {
  source              = "../../modules/container-registry"
  acr_name            = var.acr_name
  location            = var.location
  resource_group_name = module.rg.name
  sku                 = "Standard"
  admin_enabled       = true
  global_tags         = var.global_tags
}

module "storage" {
  source         = "../../modules/storage-account"
  strg_name      = var.storage_account
  strg_rg_name   = module.rg.name
  strg_location  = var.location
  tenant         = lookup(var.global_tags, "tenant", "unknown")
  environment    = lookup(var.global_tags, "env", "np")
  global_tags    = var.global_tags
}
