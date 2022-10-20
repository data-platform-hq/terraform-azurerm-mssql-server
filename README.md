# Azure Microsoft SQL Database Server Terraform module
Terraform module for creation Azure Microsoft SQL Database Server

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                      | Version   |
| ------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)       | >= 3.23.0 |

## Providers

| Name                                                          | Version |
| ------------------------------------------------------------- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.24.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                              | Type     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_mssql_server.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server)                                                         | resource |
| [azurerm_key_vault_access_policy.tde_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy)                             | resource |
| [azurerm_mssql_server_transparent_data_encryption.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_transparent_data_encryption) | resource |
| [azurerm_mssql_firewall_rule.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_firewall_rule)                                           | resource |
| [azurerm_mssql_firewall_rule.azure_services](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_firewall_rule)                                 | resource |

## Inputs

| Name                                                                                                                            | Description                                                                                                                   | Type          | Default | Required |
| ------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_project"></a> [project](#input\_project)                                                                         | Project name                                                                                                                  | `string`      | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                                                                     | Environment name                                                                                                              | `string`      | n/a     |   yes    |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group)                                                  | The name of the resource group in which to create the Microsoft SQL Server                                                    | `string`      | n/a     |   yes    |
| <a name="input_location"></a> [location](#input\_location)                                                                      | Specifies the supported Azure location where the resource exists                                                              | `string`      | n/a     |   yes    |
| <a name="input_admin_login"></a> [admin\_login](#input\_admin\_login)                                                           | The administrator login name for the server                                                                                   | `string`      | n/a     |   yes    |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password)                                                  | The password associated with the admin_username                                                                               | `string`      | n/a     |   yes    |
| <a name="input_azure_ad_admin_login"></a> [azure\_ad\_admin\_login](#input\_azure\_ad\_admin\_login)                            | The login username of the Azure AD Administrator of this SQL Server                                                           | `string`      | n/a     |   yes    |
| <a name="input_azure_ad_admin_object_id"></a> [azure\_ad\_admin\_object\_id](#input\_azure\_ad\_admin\_object\_id)              | The object id of the Azure AD Administrator of this SQL Server                                                                | `string`      | n/a     |   yes    |
| <a name="input_server_version"></a> [server_version](#input\_server\_version)                                                   | Server version                                                                                                                | `string`      | 12.0    |    no    |
| <a name="input_connection_policy"></a> [connection\_policy](#input\_connection\_policy)                                         | The connection policy the server will use: [Default \| Proxy \| Redirect]                                                     | `string`      | Default |    no    |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version)                                 | The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server: [1.0 \| 1.1 \| 1.2] | `string`      | 1.2     |    no    |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether public network access is allowed for this server                                                                      | `bool`        | true    |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                  | A mapping of tags to assign to the resource                                                                                   | `map(any)`    | {}      |    no    |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules)                                                                    | Map of IP addresses permitted for access to DB                                                                                | `map(string)` | {}      |    no    |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id)                                                      | Key Vault Id                                                                                                                  | `string`      | ""      |    no    |
| <a name="input_tde_key"></a> [tde\_key](#input\_tde\_key)                                                                       | Transparent data encryption key id                                                                                            | `string`      | ""      |    no    |

## Outputs

| Name                                                         | Description                                      |
| ------------------------------------------------------------ | ------------------------------------------------ |
| <a name="output_id"></a> [id](#output\_id)                   | Id of Azure SQL Server                           |
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn)             | Fully Qualified Domain Name of Azure SQL Server  |
| <a name="output_identity"></a> [identity](#output\_identity) | Identity properties assigned to Azure SQL Server |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/blob/main/LICENSE)
