resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.tag_environment}-${var.cluster_name}-${var.region}-aks"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  dns_prefix          = "${var.tag_environment}-${var.cluster_name}"
  kubernetes_version  = "${var.aks_version}"
  #api_server_authorized_ip_ranges = ["", "168.10.0.10/18"]
  #private_cluster_enabled = true

  linux_profile {
    admin_username = "${var.admin_username}"

    ssh_key {
      key_data = "${var.public_ssh_key}"
    }
  }

  default_node_pool {
    name            = "nodepool"
    node_count      = "${var.agents_count}"
    vm_size         = "${var.agents_size}"
    os_disk_size_gb = 50
    vnet_subnet_id = "${data.azurerm_subnet.subnet.id}"
  }

  network_profile {
    network_plugin     = "${var.network_plugin}" # Values: kubenet, azure
    #network_policy     = "${var.network_policy}" #Values: calico, azure, We can use only if network_plugin is set to azure
    service_cidr       = "${var.service_cidr}"
    dns_service_ip     = "${var.dns_service_ip}"
    docker_bridge_cidr = "${var.docker_bridge_cidr}"
    load_balancer_sku  = "${var.load_balancer_sku}" #Values: basic, standard
    #outbound_type      = "${var.outbound_type}" # Values: loadBalancer and userDefinedRouting. Defaults to loadBalancer. We can use only if network_plugin is set to azure
  }

  service_principal {
    client_id     = "${var.client_id}"
    client_secret = "${var.client_secret}"
  }

  role_based_access_control {
    enabled = true
  }

  dynamic addon_profile {
    for_each = "${var.enable_log_analytics_workspace}" ? ["log_analytics"] : []
    content {
      oms_agent {
        enabled                    = true
        log_analytics_workspace_id = "${azurerm_log_analytics_workspace.main[0].id}"
      }
    }
  }

    tags = {
    owner-department = "${var.tag_owner}"
    environment = "${var.tag_environment}"
  }
}

resource "random_id" "log_analytics_workspace_name_suffix" {
    byte_length = 8
}


resource "azurerm_log_analytics_workspace" "main" {
  count               = "${var.enable_log_analytics_workspace}" ? 1 : 0
  name                = "${var.cluster_name}-${random_id.log_analytics_workspace_name_suffix.dec}"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  sku                 = "${var.log_analytics_workspace_sku}"
  retention_in_days   = "${var.log_retention_in_days}"

    tags = {
    owner-department = "${var.tag_owner}"
    environment = "${var.tag_environment}"
  } 

}

resource "azurerm_log_analytics_solution" "main" {
  count                 = "${var.enable_log_analytics_workspace}" ? 1 : 0
  solution_name         = "ContainerInsights"
  location              = "${data.azurerm_resource_group.rg.location}"
  resource_group_name   = "${data.azurerm_resource_group.rg.name}"
  workspace_resource_id = "${azurerm_log_analytics_workspace.main[0].id}"
  workspace_name        = "${azurerm_log_analytics_workspace.main[0].name}"

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}


