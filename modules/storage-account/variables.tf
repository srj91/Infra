variable "account_replication_type" {
  description = "The replication type for the storage account."
  type        = string
  default     = "LRS"
}

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

variable "strg_account_tier" {
  description = "The account tier for the storage account."
  type        = string
  default     = "Standard"
}

variable "tenant" {
  description = "The tenant identifier for the storage account."
  type        = string
}

variable "environment" {
  description = "The environment identifier for the storage account."
  type        = string
}

