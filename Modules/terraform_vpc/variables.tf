variable "project_name" {
  description = "Project Name"
  type = string
  default = "new_project"
}

variable "aws_region" {
  description = "AWS Region"
  type = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  type = string
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone for subnets"
  type = string
  default = "ap-south-1a"
}
