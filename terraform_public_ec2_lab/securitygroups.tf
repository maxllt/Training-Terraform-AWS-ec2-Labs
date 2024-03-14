# Create a Security Group for an EC2 instance 
resource "aws_security_group" "sg_instance_test" {
  name = "sg_terraform_test"
  vpc_id = aws_vpc.vpc_test.id
  
  ingress {
    from_port	  = "${var.server_port}"
    to_port	      = "${var.server_port}"
    protocol	  = "tcp"
    cidr_blocks	  = ["0.0.0.0/0"]
  }

  ingress {
    from_port	  = "${var.ssh_port}"
    to_port	      = "${var.ssh_port}"
    protocol	  = "tcp"
    cidr_blocks	  = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
 

}
