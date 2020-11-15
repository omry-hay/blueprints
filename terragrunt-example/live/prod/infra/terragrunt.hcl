terraform {
  source = "../../../terraform-modules/infra/"
}

inputs = {
  int_min = 1
  int_max = 5000
}
