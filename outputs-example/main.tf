variable "test_tf_var" {
  default = "test_tf_var"
}

resource "random_id" "id" {
  byte_length = 8
}

output "var_output" {
  value = var.test_tf_var
}

output "my_output" {
  value = "env0_${random_id.id.dec}"
}

output "my_output_2" {
  value = "env0_${random_id.id.dec}"
  sensitive = true
}
