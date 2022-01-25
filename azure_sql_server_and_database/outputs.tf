output "azurerm_sql_server_id" {
  value = "${azurerm_sql_server.main.id}"
  description = "The Microsoft SQL Server ID."
}

output "azurerm_sql_server_id_fqdn" {
  value = "${azurerm_sql_server.main.fully_qualified_domain_name}"
  description = "The fully qualified domain name of the Azure SQL Server"
}

output "azurerm_mssql_database_id" {
  value = "${azurerm_mssql_database.main.id}"
  description = "The ID of the MS SQL Database."
}