output "id" {
  description = "The virtual machine scale set ID.."
  value       = "${azurerm_virtual_machine_scale_set.main.id}"
  sensitive = false
}