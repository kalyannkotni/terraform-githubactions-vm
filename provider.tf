# Terraform Block
terraform {
  required_providers {
    aws = { 
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "s3-terraform-statefile-as5.2.2.2"
    key = "terraform.tfstate"
    region = "${var.aws-region}"
  }
}

# Provider Block
provider "aws" {
  region = "ap-south-1"
}

