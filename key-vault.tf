resource "azurerm_key_vault" "shared_kv" {
  name                        = "benhutfltkv"
  location                    = azurerm_resource_group.shared_svcs.location
  resource_group_name         = azurerm_resource_group.shared_svcs.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_enabled         = true
  purge_protection_enabled    = false

  sku_name = "premium"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.object_id

    key_permissions = [
      "get",
      "list",
      "update",
      "create",
      "import",
      "delete",
      "recover",
      "backup",
      "restore"
    ]

    secret_permissions = [
      "get",
      "list",
      "set",
      "delete",
      "recover",
      "backup",
      "restore"
    ]

    certificate_permissions = [
      "get",
      "list",
      "update",
      "create",
      "import",
      "delete",
      "recover",
      "deleteissuers",
      "recover",
      "managecontacts",
      "manageissuers",
      "getissuers",
      "listissuers",
      "setissuers"
    ]
  }

  network_acls {
    default_action = "Allow"
    bypass         = "AzureServices"
  }
}