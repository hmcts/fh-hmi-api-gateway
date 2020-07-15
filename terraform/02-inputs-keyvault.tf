variable "principal_tenant_id" {
    description = "The Tenant ID for the principal we're giving permission to."
}
variable "principal_object_id" {
    description = "The Object ID for the principal we're giving permission to."
}
variable "soft_delete_enabled" {
    description = "Should we enable Soft Delete on the KeyVault."
    default = false
}
variable "purge_protection_enabled" {
    description = "Should we enable Purge Protection on the KeyVault."
    default = false
}
variable "kv_sku_name" {
    description = "The SKU for the KeyVault."
    default = "standard"
}
variable "secret_permissions" {
    description = "The permissions (list) for the creating principal accessing secrets."
    default = [
        "get",
        "set",
        "list"
    ]
}
variable "certificate_permissions" {
    description = "The permissions (list) for the creating principal accessing certificates."
    default = [
        "get",
        "list",
        "set"
    ]
}
variable "key_permissions" {
    description = "The permissions (list) for the creating principal accessing keys."
    default = [
        "get",
        "list",
        "set"
    ]
}
variable "storage_permissions" {
    description = "The permissions (list) for the creating principal accessing storage."
    default = [
        "get",
        "list",
        "set"
    ]
}
