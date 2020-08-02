resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "sleep 10m"
  }
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    when    = "destroy"
    command = "exit 1"
  }
}
