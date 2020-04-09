resource "azurerm_resource_group" "shared_svcs" {
  name     = "benhu-shared-svcs-rg"
  location = "Central US"
}

resource "azurerm_resource_group" "networks" {
  name     = "benhu-vnet-rg"
  location = "Central US"
}

resource "azurerm_resource_group" "identity_svcs" {
  name     = "benhu-identity-rg"
  location = "Central US"
}

resource "azurerm_resource_group" "application" {
  name     = "benhu-application-rg"
  location = "Central US"
}