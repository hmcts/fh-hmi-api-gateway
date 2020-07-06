output "service_id" {
  description = "The ID of the API Management Service created"
  value       = azurerm_api_management.apim_service.id
}

output "gateway_url" {
  description = "The URL of the Gateway for the API Management Service"
  value       = azurerm_api_management.apim_service.gateway_url
}

output "service_public_ip_addresses" {
  description = "The Public IP addresses of the API Management Service"
  value       = azurerm_api_management.apim_service.public_ip_addresses
}

output "api_outputs" {
  description = "The IDs, state, and version outputs of the APIs created"
  value = {
    id             = azurerm_api_management_api.fh-hmi-api.id
    is_current     = azurerm_api_management_api.fh-hmi-api.is_current
    is_online      = azurerm_api_management_api.fh-hmi-api.is_online
    version        = azurerm_api_management_api.fh-hmi-api.version
    version_set_id = azurerm_api_management_api.fh-hmi-api.version_set_id
  }
}

output "product_ids" {
  description = "The ID of the Product created"
  value = azurerm_api_management_product.product.id
}