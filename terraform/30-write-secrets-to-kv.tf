resource "azurerm_key_vault_secret" "subscription_key" {
  name         = "${var.prefix}-svc-${var.environment}-sub-key"
  value        = azurerm_api_management_subscription.hmi_apim_subscription.primary_key
  key_vault_id = azurerm_key_vault.hmi_apim_kv.id
  tags         = var.tags
}