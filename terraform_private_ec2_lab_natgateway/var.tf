# Input variable: region
variable "region" {
  description = "The region which will be used to create ressources"
  default = "your_region"
}

variable "subnets_region_a" {
  description = "The region which will be used to create ressources"
  default = "your_subnet_region_a"
}

variable "subnets_region_b" {
  description = "The region which will be used to create ressources"
  default = "you_subnet_region_b"
}

# Input variable: server port
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = "80"
}

# Input variable: server port
variable "ssh_port" {
  description = "The port the server will use for SSH requests"
  default = "22"
}

# Input variable : vpc cidr
variable "vpc_cidr" {
  description = "The cidr bloc to use in the VPC"
  default     = "192.168.0.0/16"
}

# Input variable : public subnet cidr
variable "subnet_public_cidr" {
  description = "The cidr bloc to use for the Subnet"
  default     = "192.168.0.0/26"
}

# Input variable : public subnet cidr 2
variable "subnet_public_cidr_2" {
  description = "The cidr bloc to use for the Subnet"
  default     = "192.168.0.64/26"
}

# Input variable : private subnet cidr
variable "subnet_private_cidr" {
  description = "The cidr bloc to use for the Subnet"
  default     = "192.168.0.128/26"
}

# Input variable : ami
variable "ec2_micro_ami" {
  description = "Ami of the t2.micro EC2 AWS 2023"
  default     = "ami-06f64fb0331ab61a0"
}

# Input variable : instance type
variable "ec2_micro" {
  description = "Type of the EC2"
  default     = "t2.micro"
}
