variable "environment" {}
variable "resource_group" {}

variable "tags" {
  description = "The tags to associate with your resources."
  default     = {
    createdby = "Subroto.Mukherjee"
    purpose   = "PoC"
  }
}

variable "prefix" {
  description = "The prefix which should be used for all resources"
  default = "fh-hmi"
}


variable "open_api_spec_content_format" {
  description = "The format of the content from which the API Definition should be imported. Possible values are: openapi, openapi+json, openapi+json-link, openapi-link, swagger-json, swagger-link-json, wadl-link-json, wadl-xml, wsdl and wsdl-link."
  default = "swagger-link-json"
}

variable "open_api_spec_content_value" {
  description = "The Content from which the API Definition should be imported. When a content_format of *-link-* is specified this must be a URL, otherwise this must be defined inline."
  default = "https://raw.githubusercontent.com/hmcts/reform-api-docs/master/docs/specs/future-hearings-request-hearing.json"
}

variable "product" {
  type = "string"
  default = "future_hearings"
}

variable "location" {
  description = "The Azure Region in which all resources should be created."
  type    = "string"
  default = "uksouth"
}

variable "env" {
  type = "string"
  default = "sbox"
}

variable "tenant_id" {
  description = "(Required) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. This is usually sourced from environemnt variables and not normally required to be specified."
  default = "531ff96d-0ae9-462a-8d2d-bec7c0b42082"
}

variable "sku_name" {
  type = "string"
  default = "Developer_1"  
}