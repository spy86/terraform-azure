resource "azurerm_mssql_server" "main" {
  name                         = "${var.environment}-${var.sql_server_name}-${var.region}-sqlserv"
  resource_group_name          = "${data.azurem_resource_group.rg.name}"
  location                     = "${data.azurem_resource_group.rg.location}"
  version                      = "${var.sql_server_version}"
  administrator_login          = "${var.sql_server_administrator_login}"
  administrator_login_password = "${var.sql_server_administrator_login_password}"

    tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.environment}"
  }
}

resource "azurerm_mssql_database" "main" {
  name           = "${var.environment}-${var.database_name}-${var.region}-sqldb"
  server_id      = "${azurerm_sql_server.main.id}"
  collation      = "${var.database_collation}"
  license_type   = "${var.database_license_type}"
  max_size_gb    = "${var.database_max_size_gb}"
  read_scale     = "${var.database_read_scale}"
  sku_name       = "${var.database_sku_name}"
  zone_redundant = "${var.database_zone_redundant}"

    tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.environment}"
  }
}

resource "azurerm_monitor_diagnostic_setting" "main" {
  name                       = "${var.environment}-${var.sql_server_name}-${var.region}-sqlserv-ds"
  target_resource_id         = "${azurerm_mssql_server.main.id}/databases/master"
  log_analytics_workspace_id = "${data.azurerm_log_analytics_workspace.law.id}"

  log {
    category = "SQLSecurityAuditEvents"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }

  lifecycle {
    ignore_changes = [log, metric]
  }
}

resource "azurerm_mssql_database_extended_auditing_policy" "main" {
  database_id            = "${azurerm_mssql_server.main.id}/databases/master"
  log_monitoring_enabled = true
}

resource "azurerm_mssql_server_extended_auditing_policy" "main" {
  server_id              = "${azurerm_mssql_server.main.id}"
  log_monitoring_enabled = true
}