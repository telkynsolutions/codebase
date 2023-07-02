variable "Linux_ec2_ami" {
  description = "This is a variable to manage AMI"
  type        = string
  default     = "ami-04b1c88a6bbd48f8e"
}

/**variable "Ubuntu_ec2_ami" {
  description = "This is a variable to manage AMI"
  type        = string
  default     = "ami-07c6e43366b19b83c"
}**/

variable "ec2_key_name" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "Devtraining2023"
}

variable "ec2_instance_type" {
  description = "This is a variable to manage instance type"
  type        = string
  default     = "t2.micro"
}

/**variable "ubuntu_tag" {
  description = "This is a variable to manage ec2 tags"
  type        = map(any)
  default = {
    "Name" = "Ubuntu Linux node"
    "Dept" = "Development"
    "Faculty" = "Infrastructure"
    "Can destroy" = "Yes"
  }
}**/

variable "amazon_linux_tag" {
  description = "Additional resource tags"
  type        = map(any)
  default = {
    "Name" = "AWS Linux  node"
    "Dept" = "Development"
    "Faculty" = "Infrastructure"
    "Can destroy" = "Yes"
  }
}

variable "bucket" {}
variable "key" {}