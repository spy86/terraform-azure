<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 2.88.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.88.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_diagnostic_setting.examplediagnostic](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_mssql_database.exampledatabase](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/mssql_database) | resource |
| [azurerm_mssql_database_extended_auditing_policy.example](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/mssql_database_extended_auditing_policy) | resource |
| [azurerm_mssql_server.examplesqlserver](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/mssql_server) | resource |
| [azurerm_mssql_server_extended_auditing_policy.example](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/mssql_server_extended_auditing_policy) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/client_config) | data source |
| [azurerm_log_analytics_workspace.law](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_collation"></a> [database\_collation](#input\_database\_collation) | Database collation | `string` | `"SQL_Latin1_General_CP1_CI_AS"` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Database name | `string` | n/a | yes |
| <a name="input_database_sku_name"></a> [database\_sku\_name](#input\_database\_sku\_name) | SKU name for database | `string` | `"BC_Gen5_2"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Specifies the name of the Log Analytics Workspace. | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_resource_group_name"></a> [log\_analytics\_workspace\_resource\_group\_name](#input\_log\_analytics\_workspace\_resource\_group\_name) | The name of the resource group in which the Log Analytics workspace is located in. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_owner"></a> [resource\_owner](#input\_resource\_owner) | A mapping of tags to assign to the resource. | `string` | `"Test organization"` | no |
| <a name="input_sql_server_administrator_login"></a> [sql\_server\_administrator\_login](#input\_sql\_server\_administrator\_login) | Administrator login for SQL server | `string` | `"admin"` | no |
| <a name="input_sql_server_administrator_login_password"></a> [sql\_server\_administrator\_login\_password](#input\_sql\_server\_administrator\_login\_password) | Administrator password for SQL server | `string` | n/a | yes |
| <a name="input_sql_server_name"></a> [sql\_server\_name](#input\_sql\_server\_name) | Name of SQL server | `string` | n/a | yes |
| <a name="input_sql_server_version"></a> [sql\_server\_version](#input\_sql\_server\_version) | Version of SQL server | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | A mapping of tags to assign to the resource. | `string` | `"dev"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_mssql_database_id"></a> [azurerm\_mssql\_database\_id](#output\_azurerm\_mssql\_database\_id) | The ID of the MS SQL Database. |
| <a name="output_azurerm_sql_server_id"></a> [azurerm\_sql\_server\_id](#output\_azurerm\_sql\_server\_id) | The Microsoft SQL Server ID. |
| <a name="output_azurerm_sql_server_id_fqdn"></a> [azurerm\_sql\_server\_id\_fqdn](#output\_azurerm\_sql\_server\_id\_fqdn) | The fully qualified domain name of the Azure SQL Server |
<!-- END_TF_DOCS -->