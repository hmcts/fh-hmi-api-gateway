resource "azurerm_api_management_api_policy" "hmi-apim-api-policy" {
  api_name            = azurerm_api_management_api.hmi-apim-api.name
  api_management_name = azurerm_api_management_api.hmi-apim.name
  resource_group_name = azurerm_resource_group.hmi_apim_rg.name

  xml_content = <<XML
<policies>
  <inbound>
    <mock-response status-code="200" content-type="application/json" />
  </inbound>
</policies>
XML
}