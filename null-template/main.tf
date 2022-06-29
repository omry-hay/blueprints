terraform {
  backend "remote" {
    organization = "env0-prod"

    workspaces {
      name = "testing-tfc-on-env0"
    }
  }
}

resource "null_resource" "null" {
}


resource "null_resource" "null3" {
}

resource "null_resource" "null4" {
}
