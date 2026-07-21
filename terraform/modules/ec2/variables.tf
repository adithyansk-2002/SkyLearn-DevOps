variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID attached to the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "AWS EC2 Key Pair"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "instance_profile" {
  description = "IAM Instance Profile attached to the EC2 instance"
  type        = string
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
}
