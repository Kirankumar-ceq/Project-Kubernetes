resource "azurerm_container_registry" "acr" {
  name                = "ceqaksacr"
  location            =  azurerm_resource_group.MY-AKS-RG.location
  resource_group_name =  azurerm_resource_group.MY-AKS-RG.name
  sku                 = "Premium"
  admin_enabled       = false
  
}