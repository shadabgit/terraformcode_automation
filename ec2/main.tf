terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-east-1"
}

resource "aws_instance" "app_server" { 
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  tags = {
    Name = "myTestUbuntuServer"
  }
}
