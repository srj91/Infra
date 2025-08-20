resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    location = var.rg_location
    resource_group_name = var.rg_name
    address_space       = var.vnet_address_space
    tags                = var.global_tags
}

resource "azurerm_subnet" "name" {
    name                 = var.subnet_name
    resource_group_name  = var.rg_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.subnet_address_prefixes  
}

#--- Outputs

output "vnet_id" {
    value = azurerm_virtual_network.vnet.id 
}

output "subnet_id" {
    value = azurerm_subnet.name.id
}