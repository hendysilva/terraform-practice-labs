# Terraform Practice

Hands-on Terraform labs on AWS, built in a Pluralsight AWS sandbox using AWS CloudShell. Each lab is created with `terraform apply` and removed with `terraform destroy` afterwards.

## Lab 2: Variables and outputs (lab2/)
Builds an S3 bucket whose name comes from variables and the AWS account ID.
What I learned: variables are inputs, main.tf is what gets built, outputs are what I can read back, and changing a variable changes the plan.

## Lab 3: VPC with 3 subnets in 3 Availability Zones (lab3/)
Builds a VPC, an internet gateway, a public route table and three public subnets, one in each Availability Zone.
What I learned: how count and cidrsubnet create several similar resources, how subnets, route tables and the internet gateway connect, and why spreading across 3 AZs keeps things running if one zone fails.

## Notes
- State files and the .terraform folder are not committed (see .gitignore).
- Next: modules, then an EKS cluster with Terraform.
