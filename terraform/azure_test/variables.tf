variable "client_id" {

}

variable "client_secret" {

}

variable "subscription_id" {

}

variable "tenant_id" {

}

# Database variables
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "TerraformCodeRG"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central US"
}

variable "db_server_name" {
  description = "PostgreSQL server name"
  type        = string
  default     = "uniquename123"
}

variable "db_admin_password" {
  description = "PostgreSQL administrator password"
  type        = string
  sensitive   = true
}

variable "allowed_ips" {
  description = "List of allowed IP addresses/CIDR blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Customize with your IP ranges
}
