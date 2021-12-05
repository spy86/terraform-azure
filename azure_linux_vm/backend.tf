terraform {
  backend "azurerm" {
    resource_group_name  = "weu-common-rg"
    storage_account_name = "tfstated"
    container_name       = "tfstate"
    key                  = "${var.environment}-${var.compute_name}-${var.region}-vm.terraform.tfstate"
  }
}