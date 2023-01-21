provider "aws" {
  region = "${var.aws_default_region}"
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::170412844252:role/env0_oidc_role"
    session_name            = "env0_OIDC_session"
    web_identity_token_file = "web-identity-token.txt"
  }
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}
