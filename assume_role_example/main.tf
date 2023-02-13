terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::244172364962:role/env0_test_assume_role"
    session_name = "env0_session"
    external_id  = "15c62b18-98d4-49ee-8a05-5c118ae50929"
  }
}

terraform {
  backend "s3" {
    bucket         = "assume-role-remote-backend"
    encrypt        = "true"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    role_arn       = "arn:aws:iam::779182809717:role/env0-assume-role-for-remote-backend"
    external_id    = "a65a1705-183f-4222-9e8e-dca3a48b6f7e"
  }
}

resource "aws_s3_bucket" "website_bucket" {
  bucket =  "env0-test-assume-role-s3-bucket"
  acl    = "public-read"

  force_destroy = true

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

resource "aws_s3_bucket_policy" "website_bucket_policy" {
  bucket = aws_s3_bucket.website_bucket.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "Public-Access",
  "Statement": [
    {
      "Sid": "Allow-Public-Access-To-Bucket",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": [
          "arn:aws:s3:::${aws_s3_bucket.website_bucket.bucket}/*"
      ]
    }
  ]
}
POLICY
}
