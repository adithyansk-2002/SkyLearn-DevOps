variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "sg_name" {
  description = "Security Group Name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
