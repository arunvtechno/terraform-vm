terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "${AZURE_CLIENT_ID}"
  client_secret   = "${AZURE_CLIENT_SECRET}"
  tenant_id       = "${AZURE_TENANT_ID}"
  subscription_id = "${AZURE_SUBSCRIPTION_ID}"
}

module "azureresource" {
  source = "./modules/vm"
}
