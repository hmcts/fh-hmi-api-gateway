resource "azurerm_resource_group" "hmi_apim_rg" {
    name     = "${var.prefix}-rg-${var.environment}"
    location = var.location
    tags     = var.tags
}