resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

terraform {
  backend "remote" {
    organization = "env0-prod"

    workspaces {
      name = "something-2"
    }
  }
}
