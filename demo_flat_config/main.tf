provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    
  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resourceGroupName
  location = var.resourceGroupLocation
  tags     = var.resourceGroupTags
}
