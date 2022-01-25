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
variable "scale_set_ssh_login" {
  description = " Specifies the administrator account name to use for all the instances of virtual machines in the scale set."
}
variable "scale_set_ssh_pub_key" {
  description = "Specifies a collection of path and key_data to be placed on the virtual machine."
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
############################
#SCALE_SET vars
############################
variable "scale_set_name" {
  description = "Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 9 characters long for windows images and 1 - 58 for linux. Changing this forces a new resource to be created."
  type = string
}
variable "scale_set_publishers" {
  description = "Specifies the publisher of the image used to create the virtual"
  type = string
}
variable "scale_set_offers" {
  description = "Specifies the offer of the image used to create the virtual machines."
  type = string
}
variable "scale_set_skus" {
  description = "Specifies the SKU of the image used to create the virtual machines."
  type = string
}
variable "scale_set_versions" {
  description = "Specifies the version of the image used to create the virtual machines."
  type = string
}
variable "scale_set_sizes" {
  description = "Specifies the size of virtual machines in a scale set."
  type = string
}
variable "vnet_rg_name" {
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "vnet_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type = string
}