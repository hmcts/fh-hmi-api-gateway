resource "azurerm_api_management_product_api" "hmi_apim_product_api" {
  api_name            = azurerm_api_management_api.hmi-apim-api.name
  product_id          = azurerm_api_management_product.hmi-apim-product.product_id 
  api_management_name = azurerm_api_management.hmi-apim.name
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name
}