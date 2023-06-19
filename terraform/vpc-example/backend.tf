terraform {
  backend "s3" {
    encrypt = "true"
    key     = "terraform/vpc/terraform.tfstate"
    region  = "us-east-1"
    bucket  = "state-tf-aws-useast1"
  }
}
