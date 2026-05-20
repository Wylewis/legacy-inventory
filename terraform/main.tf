terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "security_group" {
  source   = "./modules/security_group"
  app_port = var.app_port
  my_ip    = var.my_ip
}

module "ec2" {
  source            = "./modules/ec2"
  instance_type     = var.instance_type
  security_group_id = module.security_group.security_group_id
  app_port          = var.app_port
}
