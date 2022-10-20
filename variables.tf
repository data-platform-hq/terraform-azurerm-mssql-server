variable "project" {
  type        = string
  description = "Project name"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "resource_group" {
  type        = string
  description = "The name of the resource group in which to create the Microsoft SQL Server"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists"
}

variable "admin_login" {
  type        = string
  description = "The administrator login name for the server"
}

variable "admin_password" {
  type        = string
  description = "The password associated with the admin_username"
}

variable "azure_ad_admin_login" {
  type        = string
  description = "The login username of the Azure AD Administrator of this SQL Server."
}

variable "azure_ad_admin_object_id" {
  type        = string
  description = "The object id of the Azure AD Administrator of this SQL Server"
}

variable "server_version" {
  type        = string
  description = "Server version"
  default     = "12.0"
}

variable "connection_policy" {
  type        = string
  description = "The connection policy the server will use: [Default|Proxy|Redirect]"
  default     = "Default"
}

variable "minimum_tls_version" {
  type        = string
  description = "The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server: [1.0|1.1|1.2]"
  default     = "1.2"
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is allowed for this server"
  default     = true
}

variable "tags" {
  type        = map(any)
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

variable "ip_rules" {
  type        = map(string)
  description = "Map of IP addresses permitted for access to DB"
  default     = {}
}

variable "key_vault_id" {
  type        = string
  description = "Key Vault Id"
  default     = ""
}

variable "tde_key" {
  type        = string
  description = "Transparent data encryption key id"
  default     = ""
}
