output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(aws_vpc.this.id, "")
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = try(aws_subnet.this.id, "")
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = try(aws_vpc.this.cidr_block, "")
}

output "security_group_id_tls" {
  description = "The ID of the security group"
  value       = try(aws_security_group.allow_tls.id, "")
}
