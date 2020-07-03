# terraform {
#   required_version = ">= 0.12.25"
#   backend "azurerm" {}
#   required_providers {
#     azurerm = "~> 2.0.0"
#   }
# }


provider "azurerm" {
  version = "=2.3.0"
  features {}
  skip_provider_registration = true
}

terraform {
  backend "azurerm" {}
}