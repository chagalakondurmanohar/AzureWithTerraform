resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.resourcegroup.location
  address_space       = var.vnet_address
  resource_group_name = azurerm_resource_group.resourcegroup.name

}