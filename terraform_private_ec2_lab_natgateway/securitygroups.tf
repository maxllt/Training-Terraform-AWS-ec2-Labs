# Create a Security Group for an EC2 instance 
resource "aws_security_group" "sg_instance_test" {
  name = "sg_instance_test"
  vpc_id = aws_vpc.vpc_test.id
  
  # Allow incoming traffic on port 80 (HTTP) from the ALB
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    security_groups = [aws_security_group.sg_alb_test.id]  # Autoriser l'accès depuis le groupe de sécurité de l'ALB
  }

  # Allow outgoing traffic to the Internet
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create a Security Group for the ALB
resource "aws_security_group" "sg_alb_test" {
  name = "sg_alb_test"
  vpc_id = aws_vpc.vpc_test.id
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

}