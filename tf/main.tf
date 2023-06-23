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

resource "azurerm_resource_group" "example" {
	name = "test-resources"
	location = "East US"
}
