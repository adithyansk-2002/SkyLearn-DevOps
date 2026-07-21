output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.this.id
}

output "instance_arn" {
  description = "EC2 Instance ARN"
  value       = aws_instance.this.arn
}

output "public_ip" {
  description = "Public IP Address"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "Private IP Address"
  value       = aws_instance.this.private_ip
}

output "availability_zone" {
  description = "Availability Zone"
  value       = aws_instance.this.availability_zone
}
