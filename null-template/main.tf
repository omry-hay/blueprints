resource "null_resource" "null" {
}

resource "null_resource" "null2" {
  provisioner "local-exec" {
    command = "exit 1"
  }
}
