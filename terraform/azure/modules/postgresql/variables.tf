variable "server_name" {
  description = "The name of the PostgreSQL Flexible Server"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the PostgreSQL Flexible Server"
  type        = string
}

variable "location" {
  description = "The Azure region where the PostgreSQL Flexible Server should be created"
  type        = string
}

variable "postgresql_version" {
  description = "The version of PostgreSQL to use"
  type        = string
  default     = "16"

  validation {
    condition     = contains(["11", "12", "13", "14", "15", "16"], var.postgresql_version)
    error_message = "PostgreSQL version must be one of: 11, 12, 13, 14, 15, 16."
  }
}

variable "administrator_login" {
  description = "The administrator login name for the PostgreSQL server"
  type        = string
  default     = "postgres"
}

variable "administrator_password" {
  description = "The administrator password for the PostgreSQL server"
  type        = string
  sensitive   = true

  validation {
    condition     = length(var.administrator_password) >= 8
    error_message = "Administrator password must be at least 8 characters long."
  }
}

variable "sku_name" {
  description = "The SKU name for the PostgreSQL Flexible Server"
  type        = string
  default     = "B_Standard_B2s"
}

variable "storage_mb" {
  description = "The max storage allowed for the PostgreSQL Flexible Server in MB"
  type        = number
  default     = 32768

  validation {
    condition     = var.storage_mb >= 32768 && var.storage_mb <= 16777216
    error_message = "Storage must be between 32768 MB (32 GB) and 16777216 MB (16 TB)."
  }
}

variable "backup_retention_days" {
  description = "The backup retention days for the PostgreSQL Flexible Server"
  type        = number
  default     = 7

  validation {
    condition     = var.backup_retention_days >= 7 && var.backup_retention_days <= 35
    error_message = "Backup retention days must be between 7 and 35."
  }
}

variable "geo_redundant_backup_enabled" {
  description = "Whether geo-redundant backup is enabled for the PostgreSQL Flexible Server"
  type        = bool
  default     = false
}

variable "auto_grow_enabled" {
  description = "Whether auto grow is enabled for the PostgreSQL Flexible Server"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Whether public network access is enabled for the PostgreSQL Flexible Server"
  type        = bool
  default     = true
}

variable "availability_zone" {
  description = "The availability zone for the PostgreSQL Flexible Server"
  type        = string
  default     = "1"

  validation {
    condition     = contains(["1", "2", "3"], var.availability_zone)
    error_message = "Availability zone must be one of: 1, 2, 3."
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
} 