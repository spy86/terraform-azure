provider "azurerm" {}

data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
}

data "azurerm_log_analytics_workspace" "law" {
  name                = "${var.log_analytics_workspace_name}"
  resource_group_name = "${var.log_analytics_workspace_resource_group_name}"
}