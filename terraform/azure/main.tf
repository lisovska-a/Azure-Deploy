provider "azurerm" {
  features {}

  # Option 1: Service Principal (current method)
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

  # Option 2: Uncomment below and comment above to use Azure CLI
  # use_cli = true
}

resource "azurerm_postgresql_flexible_server" "myserverdb" {
  name                = "myserverdbtest"
  resource_group_name = "TerraformResourceGroup"
  location            = "Central US"
  version             = "16"

  # Credentials
  administrator_login    = "postgres"
  administrator_password = "YourP@ssw0rd123!"

  # Tier & Compute
  sku_name = "B_Standard_B2s"

  # Storage & Backup (now top-level)
  storage_mb                   = 32768
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = false

  # Networking
  public_network_access_enabled = true

  # Availability Zone
  zone = "1"

  tags = {}
}
