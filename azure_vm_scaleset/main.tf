provider "azurerm" {
features {}
}

data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
}


data "azurerm_subnet" "subnet" {
  name                 = "${var.subnet_name}"
  virtual_network_name = "${var.vnet_name}"
  resource_group_name  = "${var.vnet_rg_name}"
}

resource "azurerm_network_interface" "main" {
  name                = "${var.scale_set_name}-nic"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"

  ip_configuration {
    name                          = "${var.scale_set_name}-priv-ip"
    subnet_id                     = "${data.azurerm_subnet.subnet.id}"
    private_ip_address_allocation = "Dynamic"
  }
}