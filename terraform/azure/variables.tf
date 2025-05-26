# Azure Provider Configuration
variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  sensitive   = true
}

# Resource Configuration
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "TerraformResourceGroup"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "Central US"
}

# Database Configuration
variable "db_server_name" {
  description = "PostgreSQL server name (must be globally unique)"
  type        = string
  default     = "myserverdbtest"
}

variable "db_admin_password" {
  description = "PostgreSQL administrator password"
  type        = string
  sensitive   = true

  validation {
    condition     = length(var.db_admin_password) >= 8
    error_message = "Database administrator password must be at least 8 characters long."
  }
}

variable "allowed_ips" {
  description = "List of allowed IP addresses/CIDR blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Customize with your IP ranges
}
