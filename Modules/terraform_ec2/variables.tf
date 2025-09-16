variable "ami_id" {
  description = "AMI ID of the EC2 Instance"
  type = string
}

variable "instance_type" {
  description = "Type of EC2 Instance"
  type = string
}

variable "key_name" {
  description = "Name of Key-Pair"
  type = string
}

variable "instance_name" {
  description = "Name of the EC2 Instance"
  type = string
}
