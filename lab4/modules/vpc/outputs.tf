output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.public[*].id
}

output "subnet_azs" {
  value = aws_subnet.public[*].availability_zone
}

output "security_group_id" {
  value = aws_security_group.https.id
}
