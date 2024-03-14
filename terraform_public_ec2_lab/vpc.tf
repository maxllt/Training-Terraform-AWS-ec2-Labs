# Configure the VPC
resource "aws_vpc" "vpc_test" {
  cidr_block = "${var.vpc_cidr}"  # Changer le bloc CIDR selon votre VPC
  tags = {
    name = "vpc_test"
  }
}

# Create the Internet Gateway
resource "aws_internet_gateway" "gw_test" {
  vpc_id = aws_vpc.vpc_test.id
}
