variable "tags" {
  description = "Resource tags"
  type        = map(string)

  default = {
    Terraform = "true"
  }
}

variable "region" {
  default = "us-east-1"
  type    = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  default     = "10.0.1.0/24"
  description = "The CIDR block for the subnet."
}

variable "vpc_azs" {
  description = "The AZ for the subnet."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "az_region" {
  description = "The AZ for the subnet."
  default     = "us-east-1"
}

variable "rtb_cidr" {
  description = "The CIDR block of the route."
  default     = "10.0.1.0/24"
}


