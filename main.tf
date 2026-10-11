resource "oci_database_database_software_schedule_management" "database_database_software_schedule_managements" {
  for_each = var.database_database_software_schedule_managements

  database_id = each.value.database_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

