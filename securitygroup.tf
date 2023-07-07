resource "aws_security_group" "ec2_Sgrp" {
  name = var.sg_name
  description = "Allow SSH and HTTP inbound traffic"
  vpc_id      = "vpc-0f30eee216a0aa637"


  ingress {
    description = "HTTP from VPC"
    from_port   = "8080"
    to_port     = "8080"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH from VPC"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_hhtp"
  }
}
