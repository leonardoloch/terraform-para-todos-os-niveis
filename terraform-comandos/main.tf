terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }

  required_version = "1.7.4"
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
