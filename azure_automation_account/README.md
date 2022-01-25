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
| [azurerm_automation_account.exampleautomation](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/automation_account) | resource |
| [azurerm_automation_job_schedule.example](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/automation_job_schedule) | resource |
| [azurerm_automation_schedule.hour](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/automation_schedule) | resource |
| [azurerm_automation_schedule.runbook](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/automation_schedule) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/resource_group) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automation_account_name"></a> [automation\_account\_name](#input\_automation\_account\_name) | The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_automation_account_sku_name"></a> [automation\_account\_sku\_name](#input\_automation\_account\_sku\_name) | The SKU name of the account. | `string` | `"Basic"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of resource group | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of resource group | `string` | n/a | yes |
| <a name="input_resource_owner"></a> [resource\_owner](#input\_resource\_owner) | Tag describing the resource owner | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | Tag describing the environment | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_automation_schedule_start_time"></a> [automation\_schedule\_start\_time](#output\_automation\_schedule\_start\_time) | Start time of the schedule. |
| <a name="output_automation_schedule_week_interval"></a> [automation\_schedule\_week\_interval](#output\_automation\_schedule\_week\_interval) | The number of frequencys between runs. |
<!-- END_TF_DOCS -->