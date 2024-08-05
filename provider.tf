terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "cali-remote-state"
    key    = "for-each"
    region = "us-east-1"
    dynamodb_table = "cali-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}