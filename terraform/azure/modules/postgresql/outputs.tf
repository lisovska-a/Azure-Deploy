output "server_id" {
  description = "The ID of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.id
}

output "server_name" {
  description = "The name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.name
}

output "server_fqdn" {
  description = "The FQDN of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

output "server_location" {
  description = "The location of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.location
}

output "administrator_login" {
  description = "The administrator login name for the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.this.administrator_login
}

output "postgresql_version" {
  description = "The version of PostgreSQL"
  value       = azurerm_postgresql_flexible_server.this.version
}

output "sku_name" {
  description = "The SKU name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.sku_name
}

output "storage_mb" {
  description = "The storage size in MB of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.storage_mb
}

output "backup_retention_days" {
  description = "The backup retention days of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.this.backup_retention_days
}

output "public_network_access_enabled" {
  description = "Whether public network access is enabled"
  value       = azurerm_postgresql_flexible_server.this.public_network_access_enabled
} 