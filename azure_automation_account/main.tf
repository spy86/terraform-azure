provider "azurerm" {

features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name = "${var.resource_group_name}"
}
