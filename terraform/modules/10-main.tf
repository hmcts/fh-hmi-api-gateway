module "resource-group" {
    source              = "./resource-group"
    resource_group      = "${var.resource_group}"
    location            = "${var.location}"
    tags                = "${var.tags}"
  }
