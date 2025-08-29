variable "aws_region" {
  description = "region where resources will be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI id for EC2 instance"
  type        = string
  default     = "ami-0360c520857e3138f"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Test-Instance"
}

variable "key_name" {
  description = "SSH key-pair"
  type        = string
}