output "la_workspace_id" {
    value = azurerm_log_analytics_workspace.shared_law.id
}

output "subscription_id" {
    value = data.azurerm_client_config.current.subscription_id
}