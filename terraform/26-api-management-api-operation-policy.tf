resource "azurerm_api_management_api_operation_policy" "apim-hmi-api-hearings-policy" {
  api_name            = azurerm_api_management_api.hmi_apim_api.name
  api_management_name = "${var.prefix}-svc-${var.environment}"
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name
  operation_id        = "request-hearing"
  xml_content = file("../template/api-request-hearings-policy.xml")
}