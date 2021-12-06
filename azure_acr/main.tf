provider "azurerm" {

features {}
skip_provider_registration = true
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name = "${var.resource_group_name}"
}
