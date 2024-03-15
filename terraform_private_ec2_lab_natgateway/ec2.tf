# Create an EC2 instance
resource "aws_instance" "instance_test" {
  ami			                    = "${var.ec2_micro_ami}"
  instance_type               = "${var.ec2_micro}"
  vpc_security_group_ids      = ["${aws_security_group.sg_instance_test.id}"]
  subnet_id                   = aws_subnet.subnet_private_test.id

  user_data = <<-EOF
      #!/bin/bash
      yum update -y
      yum install -y httpd
      systemctl start httpd
      systemctl enable httpd
      echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
      EOF

			  
  tags = {
    name = "ec2_test"
  }
}