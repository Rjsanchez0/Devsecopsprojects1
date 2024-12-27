provider "aws" {
  region = "us-west-2" # Oregon region
}

resource "aws_s3_bucket" "projectdevops" {
  bucket = "projectdevops"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "projectdevops"
    region = "us-west-2"
  }
}

resource "aws_instance" "example_instance" {
  ami           = "ami-07d9cf938edb0739b" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"              # Change to the desired instance type

  tags = {
    Name = "example-instance"             # Update with your desired tag
  }
}
