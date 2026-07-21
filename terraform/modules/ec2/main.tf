resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name
  iam_instance_profile   = var.instance_profile

  user_data = file("${path.module}/scripts/user_data.sh")

  tags = merge(
    var.tags,
    {
      Name = var.instance_name
    }
  )
}
