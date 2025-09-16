output "vpc_id" {
  description = "Value of VPC ID"
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Value of public subnet id"
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "Value of private subnet id"
  value = aws_subnet.private.id
}
