#################################################################
## Create RESOURCE GROUP 
#################################################################
module "res-group" {
    source      = "../../modules/res-group"
    resource_group      = "${var.resource_group}"
    location            = "${var.location}"
    tags                = "${var.tags}"
}

#################################################################
## Create API-MANAGEMENT
#################################################################
# module "api-mgmt" {
#     source      = "../../modules/api-mgmt"
# }