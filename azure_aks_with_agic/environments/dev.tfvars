###################################################################
# Common vars
###################################################################
environment = "dev"
tag_environment = "dev"
resource_owner = "Test organization"
region = "weu"
###################################################################
# Resource groups vars
###################################################################
resource_group_location = "West Europe"
resource_group_name = "weu-dev-rg"
###################################################################
### AKS
###################################################################
subnet_name = "Subnet-1"
vnet_name = "dev-virtualNetwork1-weu-vnet"
vnet_rg_name = "weu-dev-rg"
network_plugin = "kubenet"
network_policy = "azure"
service_cidr = "172.16.2.0/24"
dns_service_ip = "172.16.2.11"
docker_bridge_cidr = "172.16.1.1/24"
load_balancer_sku = "standard"
outbound_type = "loadBalancer"
cluster_name = "test"
log_analytics_workspace_sku = "PerGB2018"
log_retention_in_days = 30
admin_username = "testadmin"
public_ssh_key = ""
enable_log_analytics_workspace = true
agents_size = "Standard_B2s"
agents_count = 1
aks_version = "1.21.2"
###################################################################
### APPLICATION GATEWAY
###################################################################
app_gateway_subnet_name = "Subnet-2"
app_gateway_name = "appgic"
app_gateway_sku = "Standard_v2"
frontend_port_name = "feport"
frontend_ip_configuration_name = "feip"
backend_address_pool_name = "AKSBackendPool"
http_setting_name = "be-htst"
listener_name = "httplstn"
request_routing_rule_name = "rqrt"
certificate_name = "appgw"
certificate_path = "ssl/appgw.pfx"
certificate_pwd = "changeme"