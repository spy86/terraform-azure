<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
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
| [azurerm_container_registry.main](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/container_registry) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/resource_group) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | Specifies the name of the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_acr_tier"></a> [acr\_tier](#input\_acr\_tier) | he SKU name of the container registry. Possible values are Basic, Standard and Premium. Classic (which was previously Basic) is supported only for existing resources. | `string` | `"Basic"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_owner"></a> [resource\_owner](#input\_resource\_owner) | A mapping of tags to assign to the resource. | `string` | `"Test organization"` | no |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | A mapping of tags to assign to the resource. | `string` | `"dev"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_password"></a> [admin\_password](#output\_admin\_password) | The Password associated with the Container Registry Admin account |
| <a name="output_admin_username"></a> [admin\_username](#output\_admin\_username) | The Username associated with the Container Registry Admin account |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Container Registry. |
| <a name="output_login_server"></a> [login\_server](#output\_login\_server) | The URL that can be used to log into the container registry. |
<!-- END_TF_DOCS -->