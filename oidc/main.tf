terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

data "aws_iam_role" "example" {
  name = "env0_oidc_role"
}

output "iam_role_arn" {
  value = aws_iam_role.example.arn
}
