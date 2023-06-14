terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.3.0"
    }
  }

  backend "s3" {
    bucket = "{{ aws_s3_bucket }}"
    key    = "{{ aws_s3_key }}"
    region = "{{ aws_region }}"
  }
}

provider "aws" {
  region = "{{ aws_region }}"
}

