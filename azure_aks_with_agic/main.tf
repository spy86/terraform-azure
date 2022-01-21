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

provider "kubernetes" {
  host = "${azurerm_kubernetes_cluster.aks.kube_config.0.host}"

  client_certificate     = base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate)
  load_config_file = false # when you wish not to load the local config file
}