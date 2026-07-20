variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "AWS EC2 Key Pair Name"
}