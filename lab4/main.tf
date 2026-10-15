terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "dev_vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  name_prefix = "hendy-dev"
}

module "staging_vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "10.1.0.0/16"
  name_prefix = "hendy-staging"
}
