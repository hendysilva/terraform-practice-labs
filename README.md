# Terraform Practice

Hands-on Terraform labs on AWS, built in a Pluralsight AWS sandbox using AWS CloudShell. Each lab is created with `terraform apply` and removed with `terraform destroy` afterwards.

## Lab 2: Variables and outputs (lab2/)
Builds an S3 bucket whose name comes from variables and the AWS account ID.
What I learned: variables are inputs, main.tf is what gets built, outputs are what I can read back, and changing a variable changes the plan.

## Lab 3: VPC with 3 subnets in 3 Availability Zones (lab3/)
Builds a VPC, an internet gateway, a public route table and three public subnets, one in each Availability Zone.
What I learned: how count and cidrsubnet create several similar resources, how subnets, route tables and the internet gateway connect, and why spreading across 3 AZs keeps things running if one zone fails.

## Lab 4: Reusable VPC module
A child module (modules/vpc) holds the VPC, internet gateway, 3 public subnets, route table and a security group.
The root (lab4/main.tf) calls the module twice: dev (10.0.0.0/16) and staging (10.1.0.0/16). Same code, different inputs.
The security group allows HTTPS in and all traffic out, written from the Terraform Registry docs.
Result: 24 resources created in one apply, then destroyed.

## Lab 5: New module