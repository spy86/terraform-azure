# Public Ip 
resource "azurerm_public_ip" "main" {
  name                         = "${var.environment}-${var.cluster_name}-publicIp1"
  location                     = "${data.azurerm_resource_group.rg.location}"
  resource_group_name          = "${data.azurerm_resource_group.rg.name}"
  allocation_method            = "Static"
  sku                          = "Standard"

  tags = {
    owner-department = "${var.tag_owner}"
    environment = "${var.tag_environment}"
  }
}