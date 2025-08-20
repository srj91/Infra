variable "acr_name" {
    description = "The name of the Azure Container Registry."
    type        = string 
}

variable "location" {
    description = "The Azure region where the Container Registry will be created."
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which the Container Registry will be created."
    type        = string
}

variable "sku" {
    description = "The SKU of the Azure Container Registry (e.g., Basic, Standard, Premium)."
    type        = string
    default = "Basic"
}

variable "global_tags" {
    description = "A map of tags to assign to the Container Registry."
    type        = map(string)
    default     = {}
}