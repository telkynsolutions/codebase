variable "ec2_ami" {
  description = "This is a variable to manage AMI"
  type        = string
  default     = "ami-04b1c88a6bbd48f8e"
}

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

variable "default_tags" {
  description = "Additional resource tags"
  type        = map(any)
  default = {
    "Name" = "Dev Application Node"
    "Dept" = "Development"
    "Faculty" = "Infrastructure"
    "Can destroy" = "Yes"
  }
}

variable "bucket" {}
variable "key" {}
variable "sg_name" {}