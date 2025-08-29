resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "allowtraffic" {
  name   = "allow TLS"
  vpc_id = aws_default_vpc.default.id
  ingress {
    description = "allow port 22 for ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow port 80 for http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "allow outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "testInstance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  security_groups             = [aws_security_group.allowtraffic.name]
  associate_public_ip_address = true
  tags = {
    name = var.instance_name
  }
}