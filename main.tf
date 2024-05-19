terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.104.0"
    }
    
  }
  
}

provider "azurerm" {
  features {
     resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
}

resource "azurerm_resource_group" "myresourcegroup" {
    name = "resourcegroup01"
    location = "eastus"
}
