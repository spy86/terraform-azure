provider "azurerm" {

features {}
skip_provider_registration = true
}

data "azurem_client_config" "current" {}

resource "azurem_resource_group" "rg" {
  name = "${var.resource_group_name}"
}
