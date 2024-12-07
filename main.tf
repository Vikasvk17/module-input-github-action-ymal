
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}

module "ec2" {
  source = "./modules/ec2"
  ami = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
}

module "autoscaling" {
  source = "./modules/autoscaling"
  ami = var.ami
  instance_type = var.instance_type
  asg_name = var.asg_name
  min_size = var.min_size
  max_size = var.max_size
  subnet_ids = var.subnet_ids
}
