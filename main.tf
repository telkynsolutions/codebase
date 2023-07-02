
resource "aws_instance" "ec2_amazon_Linux" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  availability_zone = "eu-west-1a"
  security_groups   = [aws_security_group.ec2_Sgrp.name]
  user_data         = <<EOF
#!/bin/bash
yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
EOF

  tags = var.default_tag
}

/**resource "aws_instance" "ec2_ubuntu" {

  ami               = var.Ubuntu_ec2_ami
  instance_type     = var.ec2_instance_type
  key_name          = var.ec2_key_name
  availability_zone = "eu-west-1b"
  security_groups   = [aws_security_group.ec2_Sgrp.name]
  user_data         = <<EOF
#!/bin/bash
apt update 
apt install maven git openjdk-8-jdk -y
EOF
  tags              = var.ubuntu_tag

}**/

