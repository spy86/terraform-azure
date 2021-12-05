<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_virtual_machine.compute](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_name"></a> [compute\_name](#input\_compute\_name) | Specifies the name of the Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_compute_offer"></a> [compute\_offer](#input\_compute\_offer) | Specifies the offer of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | `"0001-com-ubuntu-server-focal-daily"` | no |
| <a name="input_compute_publisher"></a> [compute\_publisher](#input\_compute\_publisher) | Specifies the publisher of the image. | `string` | `"Canonical"` | no |
| <a name="input_compute_size"></a> [compute\_size](#input\_compute\_size) | Specifies the size of the Virtual Machine. See also Azure VM Naming Conventions. | `string` | n/a | yes |
| <a name="input_compute_sku"></a> [compute\_sku](#input\_compute\_sku) | Specifies the SKU of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | `"20_04-daily-lts"` | no |
| <a name="input_compute_ssh_login"></a> [compute\_ssh\_login](#input\_compute\_ssh\_login) | Specifies the administrator account name to use for vm. | `string` | `"adminuser"` | no |
| <a name="input_compute_ssh_pub_key"></a> [compute\_ssh\_pub\_key](#input\_compute\_ssh\_pub\_key) | Specifies a collection of path and key\_data to be placed on the virtual machine. | `any` | n/a | yes |
| <a name="input_compute_version"></a> [compute\_version](#input\_compute\_version) | Specifies the version of the image used to create the virtual machine. Changing this forces a new resource to be created. | `string` | `"20.04.202110010"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Specifies the name of the environment | `string` | `"dev"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location of the resource group in which to create the resources. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resources. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tag_environment"></a> [tag\_environment](#input\_tag\_environment) | A mapping of tags to assign to the resource. | `string` | `"dev"` | no |
| <a name="input_resource_owner"></a> [tag\_owner](#input\_tag\_owner) | A mapping of tags to assign to the resource. | `string` | `"Test organization"` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet_resource_group_name"></a> [vnet\_resource\_group\_name](#input\_vnet\_resource\_group\_name) | The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_interface_ids"></a> [network\_interface\_ids](#output\_network\_interface\_ids) | ids of the vm nics provisoned. |
| <a name="output_network_interface_private_ip"></a> [network\_interface\_private\_ip](#output\_network\_interface\_private\_ip) | private ip addresses of the vm nics |
| <a name="output_vm_ids"></a> [vm\_ids](#output\_vm\_ids) | Virtual machine ids created. |

## How to use ?

### Terraform plan
```
terraform apply -var-file="environments/dev.tfvars"
```
### Terraform apply
```
terraform plan -var-file="environments/dev.tfvars"
```
<!-- END_TF_DOCS -->