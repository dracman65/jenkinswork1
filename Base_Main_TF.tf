## Base Main.terraform and Variables.tf

# Configure the Azure provider
terraform {
  required_version = ">= 1.2.8"
}
provider "azurerm" {
  # Subscription ID - Optional
  # version         = ">=2.97.0"
  subscription_id = "5e2e06fc-9b86-4a65-a1fa-b11d522ee3ac"
  tenant_id       = "f32b97f0-efb8-4bc3-91ee-18a6e5f635c9"

  # Terraform Features Block Page - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block

  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

## Resource Group ##
resource "azurerm_resource_group" "rg" {
  name = var.azurerm_resource_group
  #name     = "myTFCARG01"
  location = "eastus2"
  tags = {
    source = "terraform"
    name   = "david.dracoules"
  }
}
