resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

resource "null_resource" "null3" {
}


output "jFrog_sensitive" {
  sensitive = true
  value = "omryhay"
}

output "not_sensitive" {
  value = "omry1"
}

data "null_data_source" "values" {
  inputs = {
    all_server_ids = "123"
  }
}

output "all_server_ids" {
  value = data.null_data_source.values.outputs["all_server_ids"]
}
