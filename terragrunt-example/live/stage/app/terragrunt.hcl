terraform {
  source = "../../../terraform-modules/app/"
}

inputs = {
  regions = ["us-east-1"]
}

dependencies {
  paths = ["../infra"]
}
