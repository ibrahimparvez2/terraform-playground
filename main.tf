terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.31.0"
    }
  }
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region = var.aws_region
}

module "s3" {
  source = "./modules/s3"
  bucket_name="terraform-ex-1"
} 