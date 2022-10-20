output "id" {
  value = azurerm_mssql_server.this.id
}

output "fqdn" {
  value = azurerm_mssql_server.this.fully_qualified_domain_name
}

output "identity" {
  value = azurerm_mssql_server.this.identity
}
