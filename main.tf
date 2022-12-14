locals {
  ip_rules = { for e in [for k, ip in var.ip_rules : try(regex("/", ip), 0) != 0 ? { (k) = { start_ip_address = cidrhost(ip, 0), end_ip_address = cidrhost(ip, -1) } } : { (k) = { start_ip_address = ip, end_ip_address = ip } }] : keys(e)[0] => e[keys(e)[0]] }
}

resource "azurerm_mssql_server" "this" {
  name                          = "mssql-${var.project}-${var.env}-${var.location}"
  resource_group_name           = var.resource_group
  location                      = var.location
  version                       = var.server_version
  administrator_login           = var.admin_login
  administrator_login_password  = var.admin_password
  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled
  connection_policy             = var.connection_policy
  tags                          = var.tags

  lifecycle {
    ignore_changes = [
      administrator_login,
      administrator_login_password
    ]
  }

  identity {
    type = "SystemAssigned"
  }

  azuread_administrator {
    login_username = var.azure_ad_admin_login
    object_id      = var.azure_ad_admin_object_id
  }
}

resource "azurerm_key_vault_access_policy" "tde_policy" {
  for_each = { for k, v in var.key_vault_id : k => v }

  key_vault_id = each.value
  tenant_id    = azurerm_mssql_server.this.identity[0].tenant_id
  object_id    = azurerm_mssql_server.this.identity[0].principal_id

  key_permissions = [
    "Get",
    "WrapKey",
    "UnwrapKey"
  ]
}

resource "azurerm_key_vault_key" "this" {
  for_each = { for k, v in var.key_vault_id : k => v }

  name         = "tde-${var.project}-${var.env}-${var.location}"
  key_type     = var.key_type
  key_size     = var.key_size
  key_vault_id = each.value
  key_opts     = var.key_opts
}

resource "azurerm_mssql_server_transparent_data_encryption" "this" {
  for_each = { for k, v in var.key_vault_id : k => v }

  server_id        = azurerm_mssql_server.this.id
  key_vault_key_id = azurerm_key_vault_key.this[each.key].id
}

resource "azurerm_mssql_firewall_rule" "this" {
  for_each = local.ip_rules

  name             = "sql-firewall-rule-${var.project}-${var.env}-${var.location}-${each.key}"
  server_id        = azurerm_mssql_server.this.id
  start_ip_address = each.value["start_ip_address"]
  end_ip_address   = each.value["end_ip_address"]
}

resource "azurerm_mssql_firewall_rule" "azure_services" {
  name             = "sql-firewall-rule-${var.project}-${var.env}-${var.location}-azure-services"
  server_id        = azurerm_mssql_server.this.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}
