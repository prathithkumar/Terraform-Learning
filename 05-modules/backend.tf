provider "aws" {}

terraform {
    backend "s3" {
        bucket = "b55-terraform-state-new"
        key    = "tfmodules/terraform.tfstate"
        region = "us-east-1"
    }
}