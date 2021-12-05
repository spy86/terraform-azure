output "automation_schedule_start_time" {
  value = "${azurerm_automation_schedule.runbook.start_time}"
  description = "Start time of the schedule."
  sensitive = false
}

output "automation_schedule_week_interval" {
  value = "${azurerm_automation_schedule.hour.interval}"
  description = "The number of frequencys between runs."
  sensitive = false
}