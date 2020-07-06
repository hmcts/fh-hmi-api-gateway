resource "azurerm_resource_group" "hmi_apim_rg" {
    name     = var.resource_group
    location = var.location
    tags     = var.tags
}