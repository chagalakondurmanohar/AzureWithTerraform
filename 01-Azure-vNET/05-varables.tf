variable "rg_name" {
  type        = string
  description = "resource group name"
  default     = "myrg1"

}

variable "rg_location" {
  type        = string
  description = "resource group location"
  default     = "us east"

}

variable "vnet_name" {
    type = string
    description = "vnet name"
    default = "my-vnet"
  
}


variable "vnet_address" {
    type = list(string)
    description = "vnet address"
    default = [ "10.0.0.0/16" ]
  
}