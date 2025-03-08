terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # Pinning a version is good practice; adjust as needed
      version = ">= 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  # In a real setup, AWS credentials can come from env variables or a profile
  # e.g., AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-unique-demo-bucket-123456"  # Must be globally unique in S3
  acl    = "private"

  tags = {
    Environment = "Demo"
    CreatedBy   = "Terraform"
  }
}
