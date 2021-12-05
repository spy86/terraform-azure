###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = "string"
  default = "dev"
}
variable "tag_environment" {
  description = "A mapping of tags to assign to the resource."
  type = "string"
  default = "dev"
}
variable "resource_owner" {
  description = "A mapping of tags to assign to the resource."
  type = "string"
  default = "Test organization"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default = "West Europe"
  type    = "string"
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type = "string"
}
###########################
# ACR vars
###########################
variable "acr_tier" {
  description = "he SKU name of the container registry. Possible values are Basic, Standard and Premium. Classic (which was previously Basic) is supported only for existing resources."
  default = "Basic"
  type = "string"
}
variable "acr_name" {
  description = "Specifies the name of the Container Registry. Changing this forces a new resource to be created."
  type = "string"
}
