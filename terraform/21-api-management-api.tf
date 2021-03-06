resource "azurerm_api_management_api" "hmi_apim_api" {
  name                = "${var.prefix}-api-${var.environment}"
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name
  api_management_name = azurerm_api_management.hmi_apim.name
  revision            = "1"
  display_name        = "${var.prefix}-api"
  path                = "${var.prefix}-api"
  protocols           = ["http", "https"]

  service_url = var.open_api_spec_content_value
  
  import {
    content_format = var.open_api_spec_content_format
    content_value  = var.open_api_spec_content_value
  }
}
