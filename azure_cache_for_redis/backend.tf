terraform {
  backend "azurerm" {
    resource_group_name  = "weu-test-rg"
    storage_account_name = "testtfstated"
    container_name       = "tfstate"
    key                  = "${var.tag_environment}-${var.redis_cache_name}-${var.region}-redis-cache.terraform.tfstate"
  }
}