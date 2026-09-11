terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d58bea90-bcec-4795-8e36-2a8311b912bb"
  tenant_id       = "ac1409f9-eab6-4ebc-8fca-a881576813ba"
}