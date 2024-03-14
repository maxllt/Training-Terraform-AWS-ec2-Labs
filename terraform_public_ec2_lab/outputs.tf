# Output variable: Public IP address
output "public_ip" {
  value = "${aws_instance.instance_test.public_ip}"
}