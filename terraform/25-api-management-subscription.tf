resource "azurerm_api_management_subscription" "hmi_apim_subscription" {
  api_management_name = azurerm_api_management.hmi_apim.name
  resource_group_name = azurerm_api_management.hmi_apim.resource_group_name
  product_id          = azurerm_api_management_product.hmi_apim_product.id
  display_name        = "Parser API"
}