locals {
    locations = jsonencode(var.allowed_locations)
}

resource "azurerm_policy_assignment" "allowed_locations" {
  name                 = "allowed_locations"
  scope                = "/subscriptions/${data.azurerm_current_config.current.subscription_id}"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
  description          = "Allowed Locations for Resources"
  display_name         = "Allowed Locations for Resources"

  parameters = <<PARAMETERS
{
  "listOfAllowedLocations": {
    "value": ${local.locations}
  }
}
PARAMETERS

}