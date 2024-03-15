# Terraform Lab for Deploying an EC2, NAT Gateway, and ALB on AWS

This lab provides an example Terraform configuration for deploying an EC2 instance, a NAT Gateway, and an Application Load Balancer (ALB) on Amazon Web Services (AWS). It includes setting up resources in both public and private subnets, configuring security groups, and creating a VPC to host the infrastructure.

## Prerequisites

Before getting started, ensure you have the following prerequisites:

- Terraform
- An AWS account with necessary permissions to create EC2 instances, NAT Gateways, ALBs, VPCs, subnets, and security groups.

## Configuration

1. **Clone the Repository:** Start by cloning this Git repository to your local machine:

```bash
git clone https://github.com/example/aws-terraform-ec2-nat-alb-lab.git
```

2. **Initialize the Directory:** Navigate to the cloned directory and initialize Terraform:

```bash
cd aws-terraform-ec2-nat-alb-lab
terraform init
```

3. **Configure Variables:** Edit the `var.tf` file to define the necessary AWS variables such as region, access keys, etc.

4. **Validate Configuration:** Before deploying resources, validate your Terraform configuration:

```bash
terraform plan
```

5. **Deploy Resources:** Once the configuration is validated, deploy the resources:

```bash
terraform apply
```

## Project Structure

```
aws-terraform-ec2-nat-alb-lab/
│
├── providers.tf       # File defining providers
├── var.tf             # File defining Terraform variables
├── outputs.tf         # File defining Terraform outputs
├── terraform.tfstate  # Terraform state file (generated after deployment)
├── README.md          # This README file describing the lab
├── natgateway.tf      # Configuration file for NAT Gateway
├── alb.tf             # Configuration file for Application Load Balancer
├── vpc.tf             # Configuration file for VPC
├── ec2.tf             # Configuration file for ec2
├── subnets.tf         # Configuration file for subnets
└── securitygroups.tf  # Configuration file for security groups
```

## Cleanup

After completing the lab, remember to destroy the deployed resources to avoid unnecessary AWS charges:

```bash
terraform destroy
```

## Notes

- Ensure you understand the costs associated with running resources in AWS, including EC2 instances, NAT Gateways, ALBs, etc.
- This lab is provided for learning and demonstration purposes. It is recommended not to use these configurations in production without proper evaluation of security and performance.
