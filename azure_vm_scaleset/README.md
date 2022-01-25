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
| [azurerm_network_interface.main](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/network_interface) | resource |
| [azurerm_virtual_machine_scale_set.main](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/resources/virtual_machine_scale_set) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.88.1/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Var used for backend container name key | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_owner"></a> [resource\_owner](#input\_resource\_owner) | A mapping of tags to assign to the resource. | `string` | `"Test organization"` | no |
| <a name="input_scale_set_name"></a> [scale\_set\_name](#input\_scale\_set\_name) | Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 9 characters long for windows images and 1 - 58 for linux. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_scale_set_offers"></a> [scale\_set\_offers](#input\_scale\_set\_offers) | Specifies the offer of the image used to create the virtual machines. | `string` | n/a | yes |
| <a name="input_scale_set_publishers"></a> [scale\_set\_publishers](#input\_scale\_set\_publishers) | Specifies the publisher of the image used to create the virtual | `string` | n/a | yes |
| <a name="input_scale_set_sizes"></a> [scale\_set\_sizes](#input\_scale\_set\_sizes) | Specifies the size of virtual machines in a scale set. | `string` | n/a | yes |
| <a name="input_scale_set_skus"></a> [scale\_set\_skus](#input\_scale\_set\_skus) | Specifies the SKU of the image used to create the virtual machines. | `string` | n/a | yes |
| <a name="input_scale_set_ssh_login"></a> [scale\_set\_ssh\_login](#input\_scale\_set\_ssh\_login) | Specifies the administrator account name to use for all the instances of virtual machines in the scale set. | `any` | n/a | yes |
| <a name="input_scale_set_ssh_pub_key"></a> [scale\_set\_ssh\_pub\_key](#input\_scale\_set\_ssh\_pub\_key) | Specifies a collection of path and key\_data to be placed on the virtual machine. | `any` | n/a | yes |
| <a name="input_scale_set_versions"></a> [scale\_set\_versions](#input\_scale\_set\_versions) | Specifies the version of the image used to create the virtual machines. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | A mapping of tags to assign to the resource. | `string` | `"dev"` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet_rg_name"></a> [vnet\_rg\_name](#input\_vnet\_rg\_name) | The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->