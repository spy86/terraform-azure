resource "azurerm_application_gateway" "network" {
  name                = "${var.app_gateway_name}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  location            = "${data.azurerm_resource_group.rg.location}"

  sku {
    name     = "${var.app_gateway_sku}"
    tier     = "Standard_v2"
    capacity = 2
  }

  ssl_certificate {
    name     = "${var.certificate_name}"
    data     =  filebase64(var.certificate_path)
    password = "${var.certificate_pwd}"
  }

  gateway_ip_configuration {
    name      = "appGatewayIpConfig"
    subnet_id = "${data.azurerm_subnet.appgatewaysubnet.id}"
  }

  frontend_port {
    name = "${data.azurerm_virtual_network.main.name}-feport"
    port = 80
  }

  frontend_port {
    name = "httpsPort"
    port = 443
  }

  frontend_ip_configuration {
    name                 = "${data.azurerm_virtual_network.main.name}-feip"
    public_ip_address_id = "${azurerm_public_ip.test.id}"
  }

  backend_address_pool {
    name = "${data.azurerm_virtual_network.main.name}-beap"
  }

  backend_http_settings {
    name                  = "${data.azurerm_virtual_network.main.name}-be-htst"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 1
  }

  http_listener {
    name                           = "${data.azurerm_virtual_network.main.name}-httplstn"
    frontend_ip_configuration_name = "${data.azurerm_virtual_network.main.name}-feip"
    frontend_port_name             = "${data.azurerm_virtual_network.main.name}-feport"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "${data.azurerm_virtual_network.main.name}-rqrt"
    rule_type                  = "Basic"
    http_listener_name         = "${data.azurerm_virtual_network.main.name}-httplstn"
    backend_address_pool_name  = "${data.azurerm_virtual_network.main.name}-beap"
    backend_http_settings_name = "${data.azurerm_virtual_network.main.name}-be-htst"
  }

   tags = {
    owner-department = "${var.tag_owner}"
    environment = "${var.tag_environment}"
  } 
  depends_on = [ "azurerm_public_ip.main"  ]
}