resource "azurerm_automation_account" "exampleautomation" {
  name                = "${var.environment}-${var.automation_account_name}-${var.weu}"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"

  sku {
    name = "${var.automation_account_sku_name}"
  }

  tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.environment}"
  }
}