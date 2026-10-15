output "dev_vpc_id" {
  value = module.dev_vpc.vpc_id
}

output "staging_vpc_id" {
  value = module.staging_vpc.vpc_id
}

output "dev_security_group_id" {
  value = module.dev_vpc.security_group_id
}
