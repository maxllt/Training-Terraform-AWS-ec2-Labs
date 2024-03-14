# Terraform Lab for Deploying an EC2 Instance (Hello world + SSH) on AWS

This lab provides an example Terraform configuration for deploying an EC2 instance on Amazon Web Services (AWS). It includes setting up security groups, subnets, SSH rules, a new VPC, and an Internet gateway to allow access to the EC2 instance from the internet.

## Prerequisites

Before getting started, make sure you have the following software installed on your machine:

- Terraform
- An AWS account with necessary permissions to create EC2 resources, security groups, subnets, a VPC, and an Internet gateway.

## Configuration

1. **Clone the Repository:** Start by cloning this Git repository to your local machine:

```bash
git clone https://github.com/maxllt/terraform_public_ec2_lab.git
```

2. **Initialize the Directory:** Navigate to the cloned directory and initialize Terraform by running the following command:

```bash
cd terraform-ec2-lab
terraform init
```

3. **Configure Variables:** Edit the `var.tf` file to define the necessary AWS variables such as region, access keys, etc.

4. **Validate Configuration:** Before deploying resources, use the following command to validate your Terraform configuration:

```bash
terraform plan
```

5. **Deploy Resources:** Once the configuration is validated, deploy the resources by executing:

```bash
terraform apply
```

## Project Structure

```
terraform-ec2-lab/
│
├── ec2.tf             # Configuration file for EC2 instance and SSH key
├── provider.tf        # Provider configuration file
├── securitygroups.tf  # Configuration file for EC2 security group
├── subnets.tf         # Configuration file for VPC subnet to host EC2
├── vpc.tf             # Configuration file for VPC and Internet gateway
├── var.tf             # File defining Terraform variables
├── outputs.tf         # File defining Terraform outputs
├── terraform.tfstate  # Terraform state file (generated after deployment)
├── id_ed25519.pub     # File containing the public SSH key to access the instance
└── README.md          # This README file describing the lab
```

## Cleanup

After completing the lab, make sure to destroy the deployed resources to avoid unnecessary AWS charges. Use the following command to destroy the resources:

```bash
terraform destroy
```

## Notes

- Ensure you understand the costs associated with using AWS services. The deployed resources may incur charges on your AWS account.
- This lab is provided for learning and demonstration purposes. It is recommended not to use these configurations in production without proper evaluation of security and performance.

---

This README is provided in both English and French for accessibility and convenience. Users can choose the version that matches their preferred language.
