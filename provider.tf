provider "azurerm" {
  version = "=2.5.0"
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "<account_name>"
    container_name       = "tfstate"
    key                  = "caflz.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "super-secret-key"
  }
}