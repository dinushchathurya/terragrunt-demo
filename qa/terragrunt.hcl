terraform {
    source = "git::https://github.com/dinushchathurya/terragrunt-modules.git//ec2-instance?ref=1.0.0"
}

generate "provider" {
    path      = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents  = <<EOF
        provider "aws" {
            profile = "eksadmin"
            region  = "ap-southeast-1"
        }
    EOF
}

inputs = {
    ami_id            = "ami-0da5e330e9971b89e"
    availability_zone = "ap-southeast-1a"
    instance_type     = "t2.small"
    tags              = "demo_stg"
}

# Automatically find the root terragrunt.hcl and inherit its configuration
include {
  path = find_in_parent_folders()
}       
