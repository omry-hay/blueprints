resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

output "omry" {
  sensitive = true
  value = "omryhay"
}

output "omry1" {
  sensitive = false
  value = "omry1"
}
