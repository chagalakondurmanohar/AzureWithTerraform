resource "azurerm_subnet" "appsubnet" {

  name                 = "myappsubnet"
  resource_group_name  = azurerm_resource_group.resourcegroup.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.1.0/24"]

}

resource "azurerm_network_security_group" "myapp_nsg" {
  name                = "myapp_nsg"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  location            = azurerm_resource_group.resourcegroup.location

}

resource "azurerm_subnet_network_security_group_association" "snsa" {
  subnet_id                 = azurerm_subnet.appsubnet.id
  network_security_group_id = azurerm_network_security_group.myapp_nsg.id
}

resource "azurerm_network_security_rule" "securityrule" {
  name                        = "rules"
  priority                    = "100"
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.resourcegroup.name
  network_security_group_name = azurerm_network_security_group.myapp_nsg.name




}