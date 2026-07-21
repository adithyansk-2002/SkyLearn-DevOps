variable "instance_id" {
  description = "EC2 Instance ID"
  type        = string
}

variable "name" {
  description = "Elastic IP Name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
