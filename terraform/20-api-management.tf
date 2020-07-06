resource "azurerm_api_management" "hmi-apim" {
  name                = "hmi-apim"
  location            = azurerm_resource_group.hmi_apim_rg.location
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name
  publisher_name      = "HMCTS"
  publisher_email     = "company@terraform.io"

  sku_name = "Developer_1"

}