provider "aws" {
  #version = ">= 4.0"
  region  = var.region
  #access_key = "AWS_ACCESS_KEY_ID"
  #secret_key = "AWS_SECRET_ACCESS_KEY"
  #token = "AWS_SESSION_TOKEN"
}

terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
}