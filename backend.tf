terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
  bucket = "telkyn-terraform-state-files"
  key = "dev/terraform.tfstate"
  //bucket = var.bucket
  //key = var.key
  region = "eu-west-1"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

/**resource "aws_vpc" "akin_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "akin_vpc"
  }
}**/