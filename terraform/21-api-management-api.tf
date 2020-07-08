resource "azurerm_api_management_api" "hmi-apim-api" {
  name                = "${var.prefix}-api-${var.environment}"
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name
  api_management_name = azurerm_api_management.hmi-apim.name
  revision            = "1"
  display_name        = "${var.prefix}-api"
  path                = "${var.prefix}-api"
  protocols           = ["https"]

  subscription_required = true

  subscription_key_parameter_names = {
      header = "test"
      query  = "test"
  }
  import {
    content_format = var.open_api_spec_content_format
    content_value  = var.open_api_spec_content_value
  }
}