# Azure Microsoft SQL Database Server Terraform module
Terraform module for creation Azure Microsoft SQL Database Server

## Usage
```hcl
data "azurerm_key_vault" "example" {
  name                = "example"
  resource_group_name = "example"
}

data "azurerm_key_vault_key" "example" {
  name         = "example"
  key_vault_id = data.azurerm_key_vault.example.id
}

module "mssql_server" {
  source  = "data-platform-hq/mssql-server/azurerm"
  version = "1.2.0"

  project                  = "datahq"
  env                      = "example"
  location                 = "eastus"
  resource_group           = "example"
  admin_login              = "userexample"
  admin_password           = "passwordexample"
  azure_ad_admin_login     = "ad_userexample@example.com"
  azure_ad_admin_object_id = "<uuid>"
  ip_rules = {  
    "example" = "55.55.60.0/24"
  }
  
  tde_key_permissions  = true
  key_vault_id         = data.azurerm_key_vault.example.id
  key_vault_key_id     = data.azurerm_key_vault.example.id
  
  mssql_defender_state = "Disabled"
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.0.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_access_policy.tde_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_mssql_firewall_rule.azure_services](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_firewall_rule) | resource |
| [azurerm_mssql_firewall_rule.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_firewall_rule) | resource |
| [azurerm_mssql_server.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) | resource |
| [azurerm_mssql_server_security_alert_policy.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_security_alert_policy) | resource |
| [azurerm_mssql_server_transparent_data_encryption.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server_transparent_data_encryption) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_login"></a> [admin\_login](#input\_admin\_login) | The administrator login name for the server | `string` | n/a | yes |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The password associated with the admin\_username | `string` | n/a | yes |
| <a name="input_auto_rotation_enabled"></a> [auto\_rotation\_enabled](#input\_auto\_rotation\_enabled) | Server will continuously check the key vault for any new versions of the key | `bool` | `true` | no |
| <a name="input_azure_ad_admin_login"></a> [azure\_ad\_admin\_login](#input\_azure\_ad\_admin\_login) | The login username of the Azure AD Administrator of this SQL Server. | `string` | n/a | yes |
| <a name="input_azure_ad_object_id"></a> [azure\_ad\_object\_id](#input\_azure\_ad\_object\_id) | The object id of the Azure AD Administrator of this SQL Server | `string` | n/a | yes |
| <a name="input_connection_policy"></a> [connection\_policy](#input\_connection\_policy) | The connection policy the server will use: [Default\|Proxy\|Redirect] | `string` | `"Default"` | no |
| <a name="input_custom_mssql_server_name"></a> [custom\_mssql\_server\_name](#input\_custom\_mssql\_server\_name) | The name of the Microsoft SQL Server | `string` | `null` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment name | `string` | n/a | yes |
| <a name="input_ip_rules"></a> [ip\_rules](#input\_ip\_rules) | Map of IP addresses permitted for access to DB | `map(string)` | `{}` | no |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | Key Vault ID | `string` | `null` | no |
| <a name="input_key_vault_key_id"></a> [key\_vault\_key\_id](#input\_key\_vault\_key\_id) | Key Vault Key id for transparent data encryption of server | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server: [1.0\|1.1\|1.2] | `string` | `"1.2"` | no |
| <a name="input_mssql_defender_state"></a> [mssql\_defender\_state](#input\_mssql\_defender\_state) | Manages Microsoft Defender state on the mssql server | `string` | `null` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether public network access is allowed for this server | `bool` | `true` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the resource group in which to create the Microsoft SQL Server | `string` | n/a | yes |
| <a name="input_server_version"></a> [server\_version](#input\_server\_version) | Server version | `string` | `"12.0"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(any)` | `{}` | no |
| <a name="input_tde_encryption_enabled"></a> [tde\_encryption\_enabled](#input\_tde\_encryption\_enabled) | Boolean flag that enabled Transparent Data Encryption of Server | `bool` | `false` | no |
| <a name="input_tde_key_permissions"></a> [tde\_key\_permissions](#input\_tde\_key\_permissions) | List of tde key permissions | `list(string)` | <pre>[<br>  "Get",<br>  "WrapKey",<br>  "UnwrapKey",<br>  "GetRotationPolicy",<br>  "SetRotationPolicy"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | Fully Qualified Domain Name of Azure SQL Server |
| <a name="output_id"></a> [id](#output\_id) | Id of Azure SQL Server |
| <a name="output_identity"></a> [identity](#output\_identity) | Identity properties assigned to Azure SQL Server |
| <a name="output_name"></a> [name](#output\_name) | Azure SQL Server Name |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/blob/main/LICENSE)
