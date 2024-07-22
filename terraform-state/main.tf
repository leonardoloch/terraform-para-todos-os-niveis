terraform {
  required_providers {
    aws = {
        version = "5.52.0"
    }
  }
  required_version = "1.7.4"

  backend "s3" {
    bucket = "terraform-course-bucket-remote"
    key    = "terraform-state-module/terraform.tfstate"
    region = "us-west-1"
    access_key = ""
    secret_key = ""
    dynamodb_table = "terraform_state_locking"
  }
}

provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-west-1"
}
