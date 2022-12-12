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
  region  = "us-east-1a"
}

resource "aws_instance" "max" {
  ami                         = "ami-03a8df9ab83117c53"
  instance_type               = "t2.micro"
  key_name                    = "Scream_key"
  monitoring                  = true
  availability_zone           = "us-east-1a"
  vpc_security_group_ids      = "aws-cloud9-terraform-wk23-779fadc97a56496589ccc509f2fe01ac-InstanceSecurityGroup-1S3CC59RE4MRI"
  subnet_id                   = "subnet-0fb85457ff9ec48a9"
  associate_public_ip_address = true
}
