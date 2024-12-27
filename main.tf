provider "aws" {

  region = "us-west-2" # London region

}

resource "aws_s3_bucket" "projectdevops" {

  bucket = "projectdevops"

}

