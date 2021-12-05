###########################
# Common vars
###########################
variable "environment" {
  description = "Var used for backend container name key"
  type = "string"
}
variable "tag_environment" {
  description = "Tag describing the environment"
  type = "string"
}
variable "resource_owner" {
  description = "Tag describing the resource owner"
  type = "string"
}
variable "region" {
  description = "Region in which resources are deployed"
  type = "string"
  default = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "Location of resource group"
  default = "West Europe"
  type = "string"
}
variable "resource_group_name" {
  description = "Name of resource group"
  type = "string"
}
###########################
# AUTOMATION ACCOUNT vars
###########################
variable "automation_account_name" {
  description = "The name of the Automation Account in which the Job Schedule is created. Changing this forces a new resource to be created."
  type = "string"
}
variable "automation_account_sku_name" {
  description = "The SKU name of the account."
  default = "Basic"
  type = "string"
}