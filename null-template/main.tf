resource "null_resource" "null" {
}

resource "null_resource" "null3" {
}

resource "null_resource" "null4" {
}

resource "null_resource" "null5" {
}

output "jFrog_sensitive" {
  sensitive = true
  value = "omryhay"
}

output "not_sensitive" {
  value = "omry1"
}
