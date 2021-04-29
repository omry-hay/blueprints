resource "null_resource" "null" {
}

resource "null_resource" "null2" {
}

variable "idotest" {
  type = object({
    test = string
    gilad = string
  })
}
