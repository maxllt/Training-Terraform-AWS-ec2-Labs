##PUBLIC

# Create route tables
resource "aws_route_table" "rt_public_test" {
  vpc_id = aws_vpc.vpc_test.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_test.id
  }
}

# Configure the public Subnet in the VPC
resource "aws_subnet" "subnet_public_test" {
  vpc_id            = aws_vpc.vpc_test.id
  cidr_block        = "${var.subnet_public_cidr}" 
  availability_zone = "${var.subnets_region_a}"   
  tags = {
    name = "subnet_public_test"
  }
}
# Associate the route table to the Subnet
resource "aws_route_table_association" "rt_association_public_test" {
  subnet_id      = aws_subnet.subnet_public_test.id
  route_table_id = aws_route_table.rt_public_test.id
}
# Configure the public Subnet 2 in the VPC
resource "aws_subnet" "subnet_public_test_2" {
  vpc_id            = aws_vpc.vpc_test.id
  cidr_block        = "${var.subnet_public_cidr_2}"  
  availability_zone = "${var.subnets_region_b}"   
  tags = {
    name = "subnet_public_test_2"
  }
}
# Associate the route table to the Subnet
resource "aws_route_table_association" "rt_association_public_test_2" {
  subnet_id      = aws_subnet.subnet_public_test_2.id
  route_table_id = aws_route_table.rt_public_test.id
}

##PRIVATE

# Create route tables
resource "aws_route_table" "rt_private_test" {
  vpc_id = aws_vpc.vpc_test.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw_test.id
  }
}

# Configure the Private Subnet in the VPC
resource "aws_subnet" "subnet_private_test" {
  vpc_id            = aws_vpc.vpc_test.id
  cidr_block        = "${var.subnet_private_cidr}" 
  availability_zone = "${var.subnets_region_a}"   
  tags = {
    name = "subnet_private_test"
  }
}
# Associate the route table to the private Subnet
resource "aws_route_table_association" "rt_association_private_test" {
  subnet_id      = aws_subnet.subnet_private_test.id
  route_table_id = aws_route_table.rt_private_test.id
}
