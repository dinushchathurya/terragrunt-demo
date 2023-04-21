remote_state {
    backend = "s3"
    config = {
        bucket = "terragrunt-demo"
        region = "ap-southeast-1"
        key    = "${path_relative_to_include()}/terraform.tfstate"
    }

    generate = {
        path      = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }
}
