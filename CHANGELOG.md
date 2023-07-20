## [1.3.1](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.3.0...v1.3.1) (2023-07-20)


### Bug Fixes

* removed lifecycle ignore for tde key id ([a9a8eca](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/a9a8ecae864b7bd80c5e80eb05bdec4b0b6003a2))

# [1.3.0](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.2.1...v1.3.0) (2023-07-20)


### Features

* removed tde key creation; updated default policy ([bd68e58](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/bd68e58b68688185001ca44e27d0a0ab7943c190))

## [1.2.1](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.2.0...v1.2.1) (2023-07-04)


### Bug Fixes

* GetRotationPolicy added to key permissions ([733ec2b](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/733ec2b34cd0549f5e10563474a822ee5eae0db6))

# [1.2.0](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.1.0...v1.2.0) (2023-03-09)


### Bug Fixes

* updated provider ([80950fe](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/80950feafd43310f97efdb582845eeb49800285a))


### Features

* added custom names for resources ([b9b06a7](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/b9b06a7da624813cf026935f7bc53250fbc4d3ca))

# [1.1.0](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.0.3...v1.1.0) (2023-03-02)


### Bug Fixes

* fixed review comments ([13ec7ec](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/13ec7ec974cd53dc1285c1bbe1f5c1429f9e7d46))


### Features

* added management of the mssql defender ([aede9e0](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/aede9e0041eb06060accbbc20fa3002ee816759b))

## [1.0.3](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.0.2...v1.0.3) (2022-12-16)


### Bug Fixes

* create output name ([05daf25](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/05daf25af1a498e8684d0063e3594ce340c18fd5))

## [1.0.2](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.0.1...v1.0.2) (2022-11-14)


### Bug Fixes

* change description ([f6f3e5b](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/f6f3e5b68abfafe5e0fc4128e4d22bbe88c78702))
* changed description key_vault_id ([39ea1f5](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/39ea1f54ee2a5cf2d926fbc9af8f0b3fe05767ff))
* changed description variable type ([82be1fc](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/82be1fc5f292229c213395c174e28d138be6751a))
* delete variable description tdekey ([38061dc](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/38061dcdd950dcf561c2e496bcb608c8339f6b95))
* key-vault-key ([214b563](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/214b56329594da1422a5169de7dc037ca66cc8b0))

## [1.0.1](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/compare/v1.0.0...v1.0.1) (2022-10-22)


### Bug Fixes

* corrected resource_group description in the README.md ([9b2722c](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/9b2722c02858c112f3802de70423b78ce87a540e))
* removed broken condition ([58036ac](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/58036ace626980c4f0178478b29fc830a9a5026a))

# 1.0.0 (2022-10-20)


### Bug Fixes

* added condition to tde key ([62a17b3](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/62a17b36f8ee615c18075ed24a4cb3148a71d96a))
* added default values to vars ([575b3f1](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/575b3f1735659c66162d148be949d95f0f1b123f))
* added descriptions for the outputs ([97d683b](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/97d683be9f5d3bd9740e1e1f1e6cab752090baa6))
* added missing vars ([6bab256](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/6bab2568ecaa919ad23a3bbaf286523a51c2792c))
* added output description ([c1b3710](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/c1b3710a3bd7f213ec54bbdf785adecff3d063b7))
* added required space in readme ([aca0f67](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/aca0f671661cae398fe8fc618460e2ba51b5e91f))
* changed module description in the README.md ([269d520](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/269d5209aac9d3bd53a28162c039d0265cfe8bb3))
* fixed interpolation ([f3c5957](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/f3c5957479e3623dce830e36f2cffca3cdb5ca57))
* fixed var naming ([9666ea1](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/9666ea1b8bbb253aef9dbfb07e62341d85d5212f))
* renamed to outputs ([9e7f1c2](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/9e7f1c2c28ed20b20697c8a95a24d4b3e6e14da9))


### Features

* adding module ([2ea1b11](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/2ea1b11356911d59d0e496b34f074c46acec9d02))
* adding version.tf file ([2b08d69](https://github.com/data-platform-hq/terraform-azurerm-mssql-server/commit/2b08d691f98c63fef34fb5a8d33a63c065ea5c73))
