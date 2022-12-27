terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default" # AWS Credentials Profile configured in local desktop terminal  $HOME/.aws/credentials
  region  = var.aws_region
}

# Free tier ec2 instance
resource "aws_instance" "ec2demo" {
  ami           = "ami-0b5eea76982371e91" # Amazon Linux in us-east-1, update as per region
  instance_type = var.instance_type
  key_name = var.instance_keypair
  vpc_security_group_ids = [ 
  aws_security_group.vpc_ssh.id,
  aws_security_group.vpc_web.id
  ]
}
