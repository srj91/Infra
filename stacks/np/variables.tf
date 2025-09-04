variable "rg_name" {
    description = "Name of the Resource Group"
    type        = string 
}

variable "location" {
    description = "Azure region for all resources"
    type        = string 
}

variable "vnet_name" {
    description = "Name of the Virtual Network"
    type        = string 
}

variable global_tags {
    description = "A map of tags to be applied to all resources"
    type        = map(string)
    default     = {}
}

variable vnet_address_space {
    description = "Address space for the Virtual Network"
    type        = list(string)
}

variable subnet_name {
    description = "Name of the Subnet"
    type        = string 
}

variable subnet_prefixes {
    description = "Address prefixes for the Subnet"
    type        = list(string)
}

variable acr_name {
    description = "Name of the Azure Container Registry"
    type        = string 
}

variable storage_account {
    description = "Name of the Storage Account"
    type        = string 
}

