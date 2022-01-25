locals {
  instance_count = 2
}

resource "azurerm_virtual_machine_scale_set" "main" {
  name                = "${var.environment}-${var.scale_set_name}-${var.region}-vmss"
  location            = "${data.azurerm_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  upgrade_policy_mode = "Manual"

  sku {
    name     = "${var.scale_set_sizes}"
    tier     = "Standard"
    capacity = "${local.instance_count}"
  }

  os_profile {
    computer_name_prefix = "${var.scale_set_name}-vm"
    admin_username       = "${var.scale_set_ssh_login}"
  }

  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
        path     = "/home/${var.scale_set_ssh_login}/.ssh/authorized_keys"
        key_data = "${var.scale_set_ssh_pub_key}"
    }

}

  network_profile {
    name    = "${var.scale_set_name}-net-profile"
    primary = true

    ip_configuration {
      name      = "internal"
      subnet_id = "${data.azurerm_subnet.subnet.id}"
      primary   = true
    }
  }

  storage_profile_os_disk {
    name              = ""
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_profile_image_reference {
    publisher = "${var.scale_set_publishers}"
    offer     = "${var.scale_set_offers}"
    sku       = "${var.scale_set_skus}"
    version   = "${var.scale_set_versions}"
  }

  tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.environment}"
  }
}
