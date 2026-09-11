terraform {
  backend "azurerm" {
    resource_group_name = "Vinav"
    storage_account_name = "vinavtstg"
    container_name = "test"
    key = "terraform.tfstate"
  }
}