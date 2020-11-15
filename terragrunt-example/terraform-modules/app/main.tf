resource "random_shuffle" "region" {
  input = var.regions
  result_count = 1
}

variable "regions" {
  description = "regions to select from"
  type = list(string)
}

output "region" {
  value = random_shuffle.region.result[0]
}
