terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

resource "aws_instance" "instance1" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"

  tags = {
    Name = "GitHub-Actions-Demo"
     }
  }
