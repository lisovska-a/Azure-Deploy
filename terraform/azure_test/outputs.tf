output "database_server_name" {
  value = azurerm_postgresql_flexible_server.myserverdb.name
}

output "database_fqdn" {
  value = azurerm_postgresql_flexible_server.myserverdb.fqdn
}

output "database_location" {
  value = azurerm_postgresql_flexible_server.myserverdb.location
}

output "database_admin_login" {
  value = azurerm_postgresql_flexible_server.myserverdb.administrator_login
}
