resource "azurerm_log_analytics_workspace" "shared_law" {
  name                = "benhulawlt"
  location            = azurerm_resource_group.shared_svcs.location
  resource_group_name = azurerm_resource_group.shared_svcs.name
  sku                 = "PerGB2018"
  retention_in_days   = 365
}