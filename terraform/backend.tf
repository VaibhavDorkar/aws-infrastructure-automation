terraform {
  backend "s3" {
    bucket         = "vaibhav-terraform-state-demo"
    key            = "terraform/ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}