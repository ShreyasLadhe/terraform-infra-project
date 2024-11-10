output "ec2-instance-ip" {
  value = aws_instance.my-ec2-instance.public_ip
}
