
resource "azurerm_virtual_network" "MY-VNET" {
  name                = "MY-VNET"
  address_space       = ["10.0.0.0/16", "172.0.0.0/16"]
  location            = azurerm_resource_group.MY-AKS-RG.location
  resource_group_name = azurerm_resource_group.MY-AKS-RG.name

   
}

resource "azurerm_subnet" "AKS-Subnet" {
  name                 = "AKS-Subnet"
  resource_group_name  = azurerm_resource_group.MY-AKS-RG.name
  virtual_network_name = azurerm_virtual_network.MY-VNET.name
  address_prefixes     = ["10.0.1.0/24"]
  

  

}

resource "azurerm_subnet" "API-Subnet" {
  name                 = "API-Subnet"
  resource_group_name  = azurerm_resource_group.MY-AKS-RG.name
  virtual_network_name = azurerm_virtual_network.MY-VNET.name
  address_prefixes     = ["10.0.2.0/24"]

 
}

