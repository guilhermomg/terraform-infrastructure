provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source               = "../../modules/vpc"
  environment         = var.environment
  cidr_block          = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone   = "us-east-1a"
}

module "ec2" {
  source              = "../../modules/ec2"
  environment        = var.environment
  instance_type      = "t2.micro"  # Tipo de instância para dev
  subnet_id          = module.vpc.public_subnet_id
}

module "load_balancer" {
  source     = "../../modules/load_balancer"
  subnet_ids = [module.vpc.public_subnet_id]
}
