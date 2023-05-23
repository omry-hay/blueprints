resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

output "jFrog_sensitive" {
  sensitive = true
  value = "omryhay"
}

output "not_sensitive" {
  value = "omry1"
}
