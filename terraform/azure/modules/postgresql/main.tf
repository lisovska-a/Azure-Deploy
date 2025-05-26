resource "azurerm_postgresql_flexible_server" "this" {
  name                = var.server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = var.postgresql_version

  # Credentials
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password

  # Tier & Compute
  sku_name = var.sku_name

  # Storage & Backup
  storage_mb                   = var.storage_mb
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  auto_grow_enabled            = var.auto_grow_enabled

  # Networking
  public_network_access_enabled = var.public_network_access_enabled

  # Availability Zone
  zone = var.availability_zone

  tags = var.tags
} 