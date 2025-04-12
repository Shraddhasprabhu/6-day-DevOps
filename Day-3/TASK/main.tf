resource "aws_vpc" "shraddha_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "shraddha_subnet" {
  vpc_id                  = aws_vpc.shraddha_vpc.id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
}
