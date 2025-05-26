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

module "postgresql" {
  source = "./modules/postgresql"

  server_name         = var.db_server_name
  resource_group_name = var.resource_group_name
  location            = var.location

  administrator_password = var.db_admin_password

  postgresql_version            = "16"
  administrator_login           = "postgres"
  sku_name                      = "B_Standard_B2s"
  storage_mb                    = 32768
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  auto_grow_enabled             = false
  public_network_access_enabled = true
  availability_zone             = "1"

  tags = {
    Environment = "development"
    ManagedBy   = "terraform"
  }
}
