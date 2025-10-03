terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
  required_version = "1.13.3"
}

provider "aws" {
  region = "us-east-1"
}