variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}

variable "rg_location" {
  description = "The Azure location where the resource group will be created."
  type        = string
}

variable "global_tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}