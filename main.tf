# You only need to run this once per subscription
# tfsec
terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "env" {
  source = "git::https://github.com/geesaladurgaakhil/testingpr?ref=e0e225eb96e0018b718da52aff076aaa630f0b07"
  short_name = local.subscription_type
}

