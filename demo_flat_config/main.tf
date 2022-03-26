terraform {
  required_version = "~> 1.1.0"
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.1"
    }
  }
}
provider "azurerm" {
  features {
  }
  skip_provider_registration = true
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resourceGroupName
  location = var.resourceGroupLocation
  tags     = var.resourceGroupTags
}
