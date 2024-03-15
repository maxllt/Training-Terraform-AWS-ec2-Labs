# Output variable: Public IP address
output "ec2_private_ip" {
  value = "${aws_instance.instance_test.private_ip}"
}

output "alb_dns_name" {
  value = aws_lb.alb_test.dns_name
}

output "nat_gw_eip" {
  value = aws_eip.eip_test.public_ip
}
