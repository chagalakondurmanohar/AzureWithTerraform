
# Terraform Block

terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}


# Provider Block
provider "azurerm" {
  features {}
}


/* 
Step-01 : Version information
Step-02 : Resource Group 
Step-03 : Virtuval network 
Step-04 : Subnet 
Step-05 : Network Security Group
Step-06 : Network Security group assosiation
Step-07 : Network  Security rules
*/

