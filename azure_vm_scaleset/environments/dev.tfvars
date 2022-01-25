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
### SCALE_SET
###################################################################
scale_set_name = "4test"
scale_set_publishers = "Canonical"
scale_set_offers = "0001-com-ubuntu-server-focal-daily"
scale_set_skus = "20_04-daily-lts"
scale_set_versions = "20.04.202110010"
scale_set_sizes = "Standard_B4ms"
subnet_name = "Subnet-1"
vnet_name = "vnet4-test"
vnet_rg_name = "weu-test-rg"
scale_set_ssh_login = "testadmin"
scale_set_ssh_pub_key = ""