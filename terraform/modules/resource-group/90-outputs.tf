output "out_resource_group_name" {
    value = "${azurerm_resource_group.hmi_apim_rg.name}"
}
output "out_resource_group_location" {
    value = "${azurerm_resource_group.hmi_apim_rg.location}"
}