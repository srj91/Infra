
variable "strg_name" {
  description = "The name of the storage account."
  type        = string
}

variable "strg_rg_name" {
  description = "The name of the resource group for the storage account."
  type        = string
}

variable "strg_location" {
  description = "The location for the storage account."
  type        = string
}

variable "tenant" {
  description = "The tenant identifier for the storage account."
  type        = string
}

variable "environment" {
  description = "The environment identifier for the storage account."
  type        = string
}

variable "global_tags" {
  description = "A map of tags to assign to the storage account."
  type        = map(string)
  default     = {}
}