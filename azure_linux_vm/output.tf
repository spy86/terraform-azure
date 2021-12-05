output "vm_ids" {
  description = "Virtual machine ids created."
  value       = "${zurerm_virtual_machine.compute.*.id}"
}
output "network_interface_ids" {
  description = "ids of the vm nics provisoned."
  value       = "${azurerm_network_interface.main.*.id}"
}
output "network_interface_private_ip" {
  description = "private ip addresses of the vm nics"
  value       = "${azurerm_network_interface.main.*.private_ip_address}"
}
########Optionally, retrieve public IP properties########
#output "public_ip_id" {
#  description = "id of the public ip address provisoned."
#  value       = "${azurerm_public_ip.vm.*.id}"
#}
#output "public_ip_address" {
#  description = "The actual ip address allocated for the resource."
#  value       = "${azurerm_public_ip.vm.*.ip_address}"
#}
#output "public_ip_dns_name" {
#  description = "fqdn to connect to the first vm provisioned."
#  value       = "${azurerm_public_ip.vm.*.fqdn}"
#}

