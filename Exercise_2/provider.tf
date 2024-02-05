# Provider Requirements
terraform {
    required_providers {
    aws = {
       source = "hashicorp/aws"
       version = ">=4.66"
      }
    }
}

# Region
provider "aws" {
  region = var.region
}