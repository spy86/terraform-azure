resource "azurerm_automation_schedule" "runbook" {
  name                    = "${var.environment}-${var.automation_account_name}-${var.weu}-runbook"
  resource_group_name     = "${data.azurerm_resource_group.rg.name}"
  automation_account_name = "${azurerm_automation_account.exampleautomation.name}"
  frequency               = "OneTime"

}