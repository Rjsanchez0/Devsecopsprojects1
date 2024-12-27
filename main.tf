provider "aws" {
  region = "us-west-2" # Oregon region
}

resource "aws_s3_bucket" "projectdevops1" {
  bucket = "projectdevops1"
}


terraform {
  backend "s3" {
    bucket = "projectdevops1"              # Replace with your actual S3 bucket name
    key    = "terraform/state.tfstate" # Path to the state file in the S3 bucket
    region = "us-west-2"           # Replace with the desired AWS region
  }
}

resource "aws_instance" "example_instance" {
  ami           = "ami-07d9cf938edb0739b" # Replace with a valid Amazon Linux 2 AMI for eu-west-2
  instance_type = "t2.micro"              # Update to your desired instance type

  tags = {
    Name = "example-instance"             # Replace with your desired tag name
  }
}




