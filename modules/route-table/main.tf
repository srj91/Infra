resource "azurerm_route_table" "rt" {
    name                = var.rt_name
    resource_group_name = var.rt_rg_name
    location            = var.rt_location
    
    tags = {
        environment = var.environment
        tenant      = var.tenant
    }
    
    route {
        name = var.rt_name
        address_prefix = "0.0.0.0/0"
        next_hop_type = "VirtualAppliance"
        next_hop_in_ip_address = "200.200.0.68"
    }
}

resource "azurerm_subnet_route_table_association" "snet_rt_assoc" {
    subnet_id      = var.output.subnet_id
    route_table_id = azurerm_route_table.rt.id
    depends_on     = [azurerm_route_table.rt]
}

#--- Outputs
output "route_table_id" {
    value = azurerm_route_table.rt.id
}