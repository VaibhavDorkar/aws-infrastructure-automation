variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair"
  type        = string
}
variable "sg_name" {
  description = "Security Group Name"
  type        = string
  default     = "terraform-web-sg"
}