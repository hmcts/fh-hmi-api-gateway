variable "environment" {}
variable "resource_group" {}
variable "location" {
  default = "uksouth"
  }
variable "tags" {
  description = "The tags to associate with your resources."
  default     = {
      createdby = "kara.nottingham"
      purpose   = "PoC"
  }
}