resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

output "webserver_ip" {
  value       = "34.105.140.141"
  sensitive   = false
}
