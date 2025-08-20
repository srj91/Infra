variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "rg_name" {
  description = "The name of the resource group where the virtual network will be created."
  type        = string
}

variable "rg_location" {
  description = "The location of the resource group."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "global_tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}