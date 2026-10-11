variable "database_database_software_schedule_managements" {
  description = <<EOT
Map of database_database_software_schedule_managements, attributes below
Required:
    - database_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    database_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

