resource "azurerm_api_management_product" "hmi-apim-product" { 
  product_id            = "hmi-apim-product"
  resource_group_name   = azurerm_resource_group.hmi_apim_rg.name
  api_management_name   = azurerm_api_management.hmi-apim.name
  display_name          = "hmi-apim-product"
  subscription_required = true
  approval_required     = false
  published             = true
  description           = "Products let you group APIs, define terms of use, and runtime policies."
}