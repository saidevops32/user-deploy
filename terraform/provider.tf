terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
    backend "s3" {
    bucket = "sai-state-dev"
    key    = "user"
    region = "us-east-1"
    dynamodb_table = "sai-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}
