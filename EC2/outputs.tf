output "instance_id" {
  description = "Instance ID of EC2"
  value       = aws_instance.testInstance.id
}

output "public_ip" {
  description = "public IP of the EC2 instance"
  value       = aws_instance.testInstance.public_ip
}