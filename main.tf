resource "aws_key_pair" "deployer" {
  key_name   = "terraform-key"
  public_key = file("C:/Users/rohan/.ssh/terraform-key.pub")
}

module "vpc" {
  source             = "./modules/vpc"
  project_name       = var.project_name
  environment        = var.environment
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone  = "ap-south-2a"
}

module "security_group" {
  source       = "./modules/security-group"
  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id # Dependency: VPC must exist first
}

module "ec2" {
  source            = "./modules/ec2"
  project_name      = var.project_name
  environment       = var.environment
  subnet_id         = module.vpc.public_subnet_id # From VPC module output
  security_group_id = module.security_group.security_group_id
  key_name          = aws_key_pair.deployer.key_name
  instance_type     = "t3.micro"
}
