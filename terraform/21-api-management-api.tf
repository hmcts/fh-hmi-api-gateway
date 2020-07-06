resource "azurerm_api_management_api" "hmi-apim-api" {
  name                = "hmi-apim-api"
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name
  api_management_name = azurerm_api_management.hmi-apim.name
  revision            = "1"
  display_name        = "Example API"
  path                = "example"
  protocols           = ["https"]

  import {
    content_format = "swagger-link-json"
    content_value  = "http://conferenceapi.azurewebsites.net/?format=json"
  }
}