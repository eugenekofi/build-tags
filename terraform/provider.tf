terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    } 
  }
    backend "s3" {
    bucket = "project203"
    key = "devops/infrastructure/s3.tfstate"
    region = "us-west-2"
  }   
}

provider "aws" {
  region = "us-west-2"
}