output "database_database_software_schedule_managements_id" {
  description = "Map of id values across all database_database_software_schedule_managements, keyed the same as var.database_database_software_schedule_managements except keys with no id are omitted"
  value       = { for k, v in oci_database_database_software_schedule_management.database_database_software_schedule_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_database_software_schedule_managements_database_id" {
  description = "Map of database_id values across all database_database_software_schedule_managements, keyed the same as var.database_database_software_schedule_managements except keys with no database_id are omitted"
  value       = { for k, v in oci_database_database_software_schedule_management.database_database_software_schedule_managements : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}

