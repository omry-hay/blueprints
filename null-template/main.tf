terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    env0 = {
      source = "env0/env0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

provider "alicloud" {}

provider "kubernetes"{}

provider "azurerm" {}

provider "auth0" {}

provider "env0" {}

resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "./test.sh"
  }
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "./test.sh"
  }
}
