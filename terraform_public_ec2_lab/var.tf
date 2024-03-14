# Input variable: region
variable "region" {
  description = "The region which will be used to create ressources"
  default = "eu-west-3"
}

variable "subnets_region" {
  description = "The region which will be used to create subnets ressources"
  default = "eu-west-3a"
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

# Input variable : subnet cidr
variable "subnet_cidr" {
  description = "The cidr bloc to use for the Subnet"
  default     = "192.168.0.0/24"
}

# Input variable : ami
variable "ec2_micro_ami" {
  description = "Ami of the t2.micro EC2 AWS 2023"
  default     = "ami-06f64fb0331ab61a0"
}

variable "ssh_key" {
  description = "The Public SSH to put on the EC2"
  default = "your_public_key"
}
