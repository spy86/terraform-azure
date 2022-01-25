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
  description = "The name of the resource group in which to create the Kubernetes Service. Changing this forces a new resource to be created."
  type = string
}
###########################
# AKS vars
###########################
variable "cluster_name" {
  description = "The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
  type = string
}

variable "client_id" {
  description = "The Client ID (appId) for the Service Principal used for the AKS deployment"
  type = string
}

variable "client_secret" {
  description = "The Client Secret (password) for the Service Principal used for the AKS deployment"
  type = string
}

variable "admin_username" {
  description = "The username of the local administrator to be created on the Kubernetes cluster"
  type = string
}

variable "agents_size" {
  description = "The default virtual machine size for the Kubernetes agents"
  type = string
}

variable "log_analytics_workspace_sku" {
  description = "The SKU (pricing level) of the Log Analytics workspace. For new subscriptions the SKU should be set to PerGB2018"
  type = string
}

variable "log_retention_in_days" {
  description = "The retention period for the logs in days"
  type = string
}

variable "agents_count" {
  description = "The number of Agents that should exist in the Agent Pool"
  type = string
}

variable "public_ssh_key" {
  description = "A custom ssh key to control access to the AKS cluster"
  type = string
}

variable "tag_owner" {
  description = "Any tags that should be present on the Virtual Network resources"
  type = string
}

variable "tag_environment" {
  description = "Any tags that should be present on the Virtual Network resources"
  type = string
}

variable "enable_log_analytics_workspace" {
  description = "Enable the creation of azurerm_log_analytics_workspace and azurerm_log_analytics_solution or not"
  type = string
}

variable "aks_version" {
  description = "Version of AKS Cluster"
  type = string
}
variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "vnet_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "vnet_rg_name" {
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type = string
}
variable "network_plugin" {
  description = "Network plugin to use for networking. Currently supported values are azure and kubenet. Changing this forces a new resource to be created."
  type = string
}
variable "network_policy" {
  description = "Sets up network policy to be used with Azure CNI. Network policy allows us to control the traffic flow between pods. Currently supported values are calico and azure. Changing this forces a new resource to be created."
  type = string
}
variable "service_cidr" {
  description = "The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
  type = string
}
variable "dns_service_ip" {
  description = "IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
  type = string
}
variable "docker_bridge_cidr" {
  description = "IP address (in CIDR notation) used as the Docker bridge IP address on nodes. Changing this forces a new resource to be created."
  type = string
}
variable "load_balancer_sku" {
  description = "Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are Basic and Standard. Defaults to Standard."
  type = string
}
variable "outbound_type" {
  description = "The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer, userDefinedRouting, managedNATGateway and userAssignedNATGateway. Defaults to loadBalancer."
  type = string
}