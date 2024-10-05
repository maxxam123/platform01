
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "TERRAFORM"
  cidr = "10.0.0.0/16"
  # name = var.name
  # cidr = var.cidr

  azs = [var.azs01, var.azs02]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  # private_subnets = [var.cidr01, var.cidr02]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]
  # public_subnets = [var.cidr03, var.cidr04]

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Environment = "staging"
  }
}
