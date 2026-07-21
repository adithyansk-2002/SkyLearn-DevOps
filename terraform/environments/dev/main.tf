module "vpc" {
  source = "../../modules/vpc"

  vpc_name           = var.vpc_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone

  tags = local.common_tags
}

module "security_group" {
  source = "../../modules/security-group"

  sg_name = var.sg_name
  vpc_id  = module.vpc.vpc_id

  tags = local.common_tags
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
  key_name          = var.key_name
  instance_profile  = var.instance_profile
  instance_name     = var.instance_name

  tags = local.common_tags
}

module "elastic_ip" {
  source = "../../modules/elastic-ip"

  instance_id = module.ec2.instance_id
  name        = "skylearn-eip"

  tags = local.common_tags
}
