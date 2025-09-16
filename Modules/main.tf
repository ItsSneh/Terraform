provider "aws" {
  region = "ap-south-1"
}

module "my_vpc" {
  source = "../terraform_vpc"
  vpc_cidr = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  project_name = "my_project"
}

module "my_ec2" {
  source = "../terraform_ec2"
  vpc_id = module.my_vpc.vpc_id
  subnet_id = module.my_vpc.public_subnet_id
  ami = "ami-0360c520857e3138f"
  key_name = "terraform-access"
  instance_type = "t2.micro"
  instance_name = "webserver"
}
