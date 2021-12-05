resource "azurerm_virtual_machine" "compute" {
  name                  = "${var.environment}-${var.compute_name}-${var.region}-vm"
  location              = "${data.azurerm_resource_group.rg.location}"
  resource_group_name   = "${data.azurerm_resource_group.rg.name}"
  network_interface_ids = ["${azurerm_network_interface.main.id}"]
  vm_size               = "${var.compute_size}"

  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "${var.compute_publisher}"
    offer     = "${var.compute_offer}"
    sku       = "${var.compute_sku}"
    version   = "${var.compute_version}"
  }

  storage_os_disk {
    name              = "${var.environment}-${var.compute_name}-${var.region}-vm-osdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "${var.compute_name}"
    admin_username = "${var.compute_ssh_login}"
    
  }

  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
        path     = "/home/${var.compute_ssh_login}/.ssh/authorized_keys"
        key_data = "${var.compute_ssh_pub_key}"
    }

}

  tags = {
    resource_owner = "${var.resource_owner}"
    environment = "${var.environment}"
  }
}