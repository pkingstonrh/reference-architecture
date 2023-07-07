terraform {
	required_providers {
		ansible = {
			version = "~> 1.1.0"
			source  = "ansible/ansible"
		}
		azurerm = {
			source  = "hashicorp/azurerm"
			version = "=3.0.0"
		}
	}
}

provider "azurerm" {
	features {}
}

resource "azurerm_resource_group" "tfstate" {
  name     = "{{ tfstate_rg_name }}"
  location = "{{ region }}"
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "{{ tfstate_storage_account_name }}"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "{{ tfstate_container_name }}"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}
