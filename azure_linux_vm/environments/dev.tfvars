###################################################################
### COMMON 
###################################################################
environment = "dev"
tag_environment = "dev"
resource_owner = "Test organization"
region = "weu"
###################################################################
### RESOURCE GROUP
###################################################################
resource_group_location = "West Europe"
resource_group_name = "weu-dev-rg"
###################################################################
### AZURE LINUX VM
###################################################################
subnet_name = "Subnet-1"
vnet_name = "weudevvnet"
vnet_resource_group_name = "weu-dev-rg"
compute_name = "weudevcompute01"
compute_publisher = "Canonical"
compute_offer = "0001-com-ubuntu-server-focal-daily"
compute_sku = "20_04-daily-lts"
compute_version = "20.04.202110010"
compute_size = "Standard_B2ms"
compute_ssh_login = "testuser"
compute_ssh_pub_key = ""