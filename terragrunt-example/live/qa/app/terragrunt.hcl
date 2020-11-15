terraform {
  source = "../../../terraform-modules/app/"
}

inputs = {
  regions = ["us-east-1", "us-east-2"]
}

dependencies {
  paths = ["../infra"]
}
