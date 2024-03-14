# Configure the Subnet in the VPC
resource "aws_subnet" "subnet_test" {
  vpc_id            = aws_vpc.vpc_test.id
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnets_region}" 
  tags = {
    name = "subnet_test"
  }
}

# Create the route table
resource "aws_route_table" "rt_public_test" {
  vpc_id = aws_vpc.vpc_test.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_test.id
  }
}

# Associate the route table to the Subnet
resource "aws_route_table_association" "rt_association_public_test" {
  subnet_id      = aws_subnet.subnet_test.id
  route_table_id = aws_route_table.rt_public_test.id
}
