terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.88.1"
    }
  }
  backend "azurerm" {
        resource_group_name = "weu-common-rg"
        storage_account_name = "tfstated"
        container_name = "tfstate"
        key = "acr-terraform.tfstate"
  }
required_version = ">= 0.15"
}