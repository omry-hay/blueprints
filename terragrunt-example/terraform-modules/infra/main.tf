resource "random_integer" "int" {
  min = var.int_min
  max = var.int_max
}

variable "int_min" {
  description = "min random integer"
  type = number
}

variable "int_max" {
  description = "max random integer"
  type = number
}

output "integer" {
  value = random_integer.int.result
}
