resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

output "jFrog_sensitive" {
  sensitive = true
  value = "omryhay"
}

module "null-tamplate" {
  source  = "app.terraform.io/env0-prod/null-tamplate/env0"
  version = "0.0.2"
}

output "not_sensitive" {
  value = "omry1"
}
