provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-resources"
  location = var.location
}

resource "azurerm_api_management" "apim_service" { # We can decide on a more meaninful name in line with Future Hearings project
  name                = "${var.prefix}-apim-service"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  publisher_name      = "<Publisher Name>" # Need to check with devops whether this property is required or not
  publisher_email     = "<publisher email id>" # Need to check with devops whether this property is required or not
  policy              = "${file("${path.module}/template/api-policy.xml")}"
}

resource "azurerm_api_management_api" "api" { # We can decide on a more meaninful api name
  name                = "${var.prefix}-api"
  resource_group_name = azurerm_resource_group.rg.name
  api_management_name = azurerm_api_management.apim_service.name
  revision            = "1"
  display_name        = "${var.prefix}-api"
  path                = "future-hearings-api"
  protocols           = ["https", "http"]
  description         = "<API Description>"# will add in accordance with the backend API which we are mocking.
  import {
    content_format = var.open_api_spec_content_format
    content_value  = var.open_api_spec_content_value
  }
}

resource "azurerm_api_management_product" "product" { # We can decide on a more meaninful product name
  product_id            = "${var.prefix}-product"
  resource_group_name   = azurerm_resource_group.rg.name
  api_management_name   = azurerm_api_management.apim_service.name
  display_name          = "${var.prefix}-product"
  subscription_required = true
  approval_required     = false
  published             = true
  description           = "Product is an umbrella under which multiple apis can be grouped"
}