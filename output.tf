output "ec2_amazon_Linux_ip" {
  value = aws_instance.ec2_amazon_Linux.public_ip
}
output "ec2_ubuntu_ip" {
  value = aws_instance.ec2_ubuntu.public_ip
}
