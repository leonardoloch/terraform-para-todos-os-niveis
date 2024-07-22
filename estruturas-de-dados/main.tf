terraform {
  required_providers {
    aws = {
        version = "5.52.0"
    }
  }
  required_version = "1.7.4"
}

provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-west-1"
}
