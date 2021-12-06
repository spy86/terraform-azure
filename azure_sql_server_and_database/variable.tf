###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = string
  default = "dev"
}
variable "tag_environment" {
  description = "A mapping of tags to assign to the resource."
  type = string
  default = "dev"
}
variable "resource_owner" {
  description = "A mapping of tags to assign to the resource."
  type = string
  default = "Test organization"
}
variable "region" {
  description = "Region in which resources are deployed"
  type = string
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default = "West Europe"
  type = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type = string
}
###########################
# SQL SERVER and DB vars
###########################
variable "sql_server_version" {
  description = "Version of SQL server"
  type = string
}
variable "sql_server_name" {
  description = "Name of SQL server"
  type = string
}
variable "sql_server_administrator_login" {
  description = "Administrator login for SQL server"
  type = string
  default = "admin"
}
variable "sql_server_administrator_login_password" {
  description = "Administrator password for SQL server"
  type = string
}
variable "database_collation" {
  description = "Database collation"
  type = string
  default = "SQL_Latin1_General_CP1_CI_AS"
}
variable "database_name" {
  description = "Database name"
  type = string
}
variable "database_sku_name" {
  description = "SKU name for database"
  type = string
  default = "BC_Gen5_2"
}
###########################
# Log Analitycs Workspace vars
###########################
variable "log_analytics_workspace_name" {
  description = "Specifies the name of the Log Analytics Workspace."
  type = string
}
variable "log_analytics_workspace_resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace is located in."
  type = string
}