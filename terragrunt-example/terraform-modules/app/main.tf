resource "random_shuffle" "region" {
  input = var.regions
  result_count = 1
}

resource "random_pet" "pet" {
  prefix = var.random_string
}

variable "random_string" {
  type = string
}

variable "regions" {
  description = "regions to select from"
  type = list(string)
}

output "region" {
  value = random_shuffle.region.result[0]
}

output "pet_name" {
  value = random_pet.pet.id
}
