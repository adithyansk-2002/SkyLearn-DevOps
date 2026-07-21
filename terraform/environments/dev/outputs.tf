output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "VPC ARN"
  value       = module.vpc.vpc_arn
}

output "subnet_id" {
  description = "Public Subnet ID"
  value       = module.vpc.public_subnet_id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.security_group.security_group_id
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.instance_id
}

output "instance_arn" {
  description = "EC2 Instance ARN"
  value       = module.ec2.instance_arn
}

output "public_ip" {
  description = "Elastic IP Address"
  value       = module.elastic_ip.public_ip
}

output "private_ip" {
  description = "Private IP Address"
  value       = module.ec2.private_ip
}

output "availability_zone" {
  description = "Availability Zone"
  value       = module.ec2.availability_zone
}
