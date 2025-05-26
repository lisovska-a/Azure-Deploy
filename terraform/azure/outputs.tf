output "database_server_name" {
  description = "The name of the PostgreSQL Flexible Server"
  value       = module.postgresql.server_name
}

output "database_fqdn" {
  description = "The FQDN of the PostgreSQL Flexible Server"
  value       = module.postgresql.server_fqdn
}

output "database_location" {
  description = "The location of the PostgreSQL Flexible Server"
  value       = module.postgresql.server_location
}

output "database_admin_login" {
  description = "The administrator login name for the PostgreSQL server"
  value       = module.postgresql.administrator_login
}

output "database_server_id" {
  description = "The ID of the PostgreSQL Flexible Server"
  value       = module.postgresql.server_id
}

output "database_version" {
  description = "The version of PostgreSQL"
  value       = module.postgresql.postgresql_version
}
