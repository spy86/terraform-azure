resource "azurerm_container_registry" "main" {
  name                     = "${var.environment}${var.acr_name}acr${var.region}"
  resource_group_name      = "${data.azurerm_resource_group.rg.name}"
  location                 = "${data.azurerm_resource_group.rg.location}"
  sku                      = "${var.acr_tier}"
  admin_enabled            = true
  
  tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.environment}"
  }
}