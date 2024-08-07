terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0" #AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws76s-remote-state-new" # you should creat this s3 bucket
    key    = "provisioner"
    region = "us-east-1"
    dynamodb_table = "daws76s-locking" # you should create the table in dynamoDB
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
} 