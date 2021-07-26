terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
  aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  region: "ap-south-1"
}

resource "aws_instance" "instance1" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"

  tags = {
    Name = "GitHub-Actions-Demo"
     }
  }
