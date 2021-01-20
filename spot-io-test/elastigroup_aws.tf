resource "spotinst_elastigroup_aws" "default-elastigroup" {

  name        = "default-elastigroup"
  description = "created by Terraform"
  product     = "Linux/UNIX"

  max_size          = 4
  min_size          = 2
  desired_capacity  = 3
  capacity_unit     = "instance"

  region      = "us-east-1"
  subnet_ids  = ["subnet-2129ec00", "subnet-3ecc3761"]

  image_id              = "ami-0d915a031cabac0e0"
  security_groups       = ["sg-4d101f6c"]
  enable_monitoring     = false
  ebs_optimized         = false
  placement_tenancy     = "default"
  metadata_options {
    http_tokens                 = "optional"
    http_put_response_hop_limit = 10
  }

  instance_types_ondemand       = "m3.2xlarge"
  instance_types_spot           = ["m3.xlarge", "m3.2xlarge"]
  instance_types_preferred_spot = ["m3.xlarge"]

  orientation           = "balanced"
  fallback_to_ondemand  = false
  cpu_credits           = "unlimited"

  wait_for_capacity         = 5
  wait_for_capacity_timeout = 300

  scaling_strategy {
    terminate_at_end_of_billing_hour = true
    termination_policy = "default"
  }

  scaling_up_policy {
    policy_name        = "Default Scaling Up Policy"
    metric_name        = "DefaultQueuesDepth"
    statistic          = "average"
    unit               = "none"
    adjustment         = 1
    namespace          = "custom"
    threshold          = 100
    period             = 60
    evaluation_periods = 5
    cooldown           = 300
    action_type        = "adjustment"
  }

  scaling_down_policy {
    policy_name        = "Default Scaling Down Policy"
    metric_name        = "DefaultQueuesDepth"
    statistic          = "average"
    unit               = "none"
    adjustment         = 1
    namespace          = "custom"
    threshold          = 10
    period             = 60
    evaluation_periods = 10
    cooldown           = 300
    action_type        = "adjustment"
  }

  tags {
     key   = "env0_environment_id"
     value = var.env0_environment_id
  }

  tags {
     key   = "env0_project_id"
     value = var.env0_project_id
  }

  lifecycle {
    ignore_changes = [
      "desired_capacity",
    ]
  }
}
