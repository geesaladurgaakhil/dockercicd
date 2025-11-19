# You only need to run this once per subscription
# tfsec
terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "env" {
  source = "git::https://github.com/geesaladurgaakhil/testingpr?ref=v0.1.0"
  short_name = local.subscription_type
}

