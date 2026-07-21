variable "region" {
  description = "AWS Region"
  type        = string

  validation {
    condition = contains([
      "ap-south-1"
    ], var.region)

    error_message = "Only ap-south-1 is supported."
  }
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string

  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "Invalid CIDR block."
  }
}

variable "public_subnet_cidr" {
  description = "Public Subnet CIDR"
  type        = string

  validation {
    condition     = can(cidrhost(var.public_subnet_cidr, 0))
    error_message = "Invalid subnet CIDR."
  }
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string

  validation {
    condition = startswith(var.availability_zone, var.region)

    error_message = "Availability Zone must belong to the selected region."
  }
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string

  validation {
    condition = contains([
      "t3.micro",
      "t3.small"
    ], var.instance_type)

    error_message = "Only t3.micro or t3.small are allowed."
  }
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair"
  type        = string
}

variable "sg_name" {
  description = "Security Group Name"
  type        = string
}

variable "instance_profile" {
  description = "IAM Instance Profile"
  type        = string
}
