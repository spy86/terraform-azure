provider "azurerm" {
version = "~>2.5"
features {}
skip_provider_registration = true
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

data "azurerm_subnet" "appgatewaysubnet" {
  name                 = "${var.app_gateway_subnet_name}"
  virtual_network_name = "${var.vnet_name}"
  resource_group_name  = "${var.vnet_rg_name}"
}

data "azurerm_virtual_network" "main" {
  name                = "${var.vnet_name}"
  resource_group_name = "${var.vnet_rg_name}"
}