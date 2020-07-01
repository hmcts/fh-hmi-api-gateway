variable "prefix" {
  description = "The prefix which should be used for all resources"
  default = "fh_hmi"
}


variable "open_api_spec_content_format" {
  description = "The format of the content from which the API Definition should be imported. Possible values are: openapi, openapi+json, openapi+json-link, openapi-link, swagger-json, swagger-link-json, wadl-link-json, wadl-xml, wsdl and wsdl-link."
}

variable "open_api_spec_content_value" {
  description = "The Content from which the API Definition should be imported. When a content_format of *-link-* is specified this must be a URL, otherwise this must be defined inline."
}

variable "product" {
  type = "string"
  default = "future_hearings"
}

variable "location" {
  description = "The Azure Region in which all resources should be created."
  type    = "string"
  default = "UK South"
}

variable "env" {
  type = "string"
  default = "sbox"
}

variable "tenant_id" {
  description = "(Required) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. This is usually sourced from environemnt variables and not normally required to be specified."
}

variable "sku_name" {
  type = "string"
  default = "Developer_1"  
}

# thumbprint of the SSL certificate for API gateway tests
# This will be required if the front end client authenticates using certificate thumbprint
#variable api_gateway_test_certificate_thumbprints {
#  type = "list"
  # TODO: remove default and provide environment-specific values
#  default = []
#}