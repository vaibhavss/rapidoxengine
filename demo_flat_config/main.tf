provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resourceGroupName
  location = var.resourceGroupLocation
  tags     = var.resourceGroupTags
}
