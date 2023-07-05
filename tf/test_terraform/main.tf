terraform {
	required_providers {
		ansible = {
			version = "~> 1.1.0"
			source = "ansible/ansible"
		}
		azurerm = {
			source = "hashicorp/azurerm"
			version = "=3.0.0"
		}
	}
	backend "azurerm" {
		resource_group_name = "{{ tfstate_rg_name }}"
		storage_account_name = "{{ tfstate_storage_account_name }}"
		container_name = "{{ tfstate_container_name }}"
		key = "terraform.tfstate"
	}
}

provider "azurerm" {
	features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
	name = "state-demo"
	location = "eastus"
}
