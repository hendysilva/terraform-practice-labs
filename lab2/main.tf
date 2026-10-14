terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "demo" {
  bucket = "${var.name_prefix}-${data.aws_caller_identity.current.account_id}"
  tags = {
    Name = "${var.name_prefix}-bucket"
  }
}
