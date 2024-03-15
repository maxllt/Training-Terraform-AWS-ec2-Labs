# Create the Elastic IP 
resource "aws_eip" "eip_test" {
  domain   = "vpc"
}

# Create the NatGateway and allocate the EIP
resource "aws_nat_gateway" "nat_gw_test" {
  allocation_id = aws_eip.eip_test.id
  subnet_id     = aws_subnet.subnet_public_test.id

  tags = {
    Name = "gw_NAT_test"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw_test]
}