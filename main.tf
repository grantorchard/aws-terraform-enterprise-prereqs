module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "1.72.0"

  name = "go-tfe-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-2c", "ap-southeast-2b", "ap-southeast-2a"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
  one_nat_gateway_per_az = false
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "tfe-v5"
    Name = "go"
  }
}

resource "aws_s3_bucket" "tfe" {
  bucket = "tfe-bucket"
  acl    = "private"

  tags = {
    Name        = "go-tfe"
  }
}