variable "rt_name" {
    description = "The name of the route table"
    type        = string 
}

variable "rt_rg_name" {
    description = "The name of the resource group where the route table will be created"
    type        = string
}

variable "rt_location" {
    description = "The Azure region where the route table will be created"
    type        = string
}

variable "environment" {
    description = "The environment tag for the route table"
    type        = string
}

variable "tenant" {
    description = "The tenant tag for the route table"
    type        = string
}