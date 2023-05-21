terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    google = {
      source = "hashicorp/google"
      version = "4.65.2"
    }
    github = {
      source  = "integrations/github"
      version = "5.25.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

provider "google" {
  project     = "env0project"
  region      = "us-central1"
}

provider "github" {}
