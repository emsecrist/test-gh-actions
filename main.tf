terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.1"
    }
  }
}


  provider "aws" {
    region = "us-west-2"
  }

  resource "aws_instance" "eric_example" {
    ami		  = "ami-ebc42a93"
    instance_type = "t2.micro"
  
    tags = {
      Name = "eric-example"
    }
}
