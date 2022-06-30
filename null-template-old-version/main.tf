terraform {
  backend "remote" {
    organization = "env0-prod"

    workspaces {
      name = "tfc-test-with-env0-old-tf-version"
    }
  }
}

resource "null_resource" "null" {
}


resource "null_resource" "null3" {
}

resource "null_resource" "null4" {
}
