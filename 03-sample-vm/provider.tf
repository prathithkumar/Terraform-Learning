provider "aws" {}

terraform {
    backend "s3" {
        bucket = "b55-terraform-state-new"
        key    = "mod/terraform.tfstate"
        region = "us-east-1"
    }
}