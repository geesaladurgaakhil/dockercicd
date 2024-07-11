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
  #source     = "git::https://github.com/DigitalInnovation/terraform-mns-environment-names?ref=v0.1.0"
  short_name = local.subscription_type
}

