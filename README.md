Infrastructure Automation with Terraform 
This project demonstrates the Infrastructure Automation using Terraform to deploy Azure Cloud Resources such as Virtual Network, Subnets, Network Security Group, Virtual Machines, and more.
Additionally, the deployment process is fully automated via Azure DevOps CI/CD Pipeline

Project Overview
The objective of this project is to:

Automate infrastructure provisioning using Terraform (IaC).
Deploy resources like VNet, Subnet, NSG, VM on Azure Cloud.
Integrate the Terraform code with Azure DevOps Pipeline for continuous deployment.

Tech Stack
Terraform: Infrastructure as Code (IaC) tool.
Azure Cloud: Cloud platform to deploy resources.
Azure DevOps: For CI/CD Pipeline to automate infrastructure deployment.
GitHub: Version control system to host the source code.

Terraform Code Structure
Below is the directory structure of the Terraform code:

Infrastructure-Automation-Terraform

main.tf           --> Contains the resource creation code (VM, VNet, Subnet, etc.)
variables.tf      --> Contains input variables like Resource Group, VNet Name, etc.
outputs.tf        --> Contains output variables like VM IP, etc.
terraform.tfstate --> Terraform state file (auto-created after deployment)
.gitignore        --> Ignore unwanted files (like tfstate) while pushing to GitHub

Azure DevOps Pipeline Flow
The CI/CD Pipeline Flow is as follows:

Developer pushes the code to GitHub.
Azure DevOps Pipeline triggers and pulls the code from GitHub.
TerraformInstaller task installs Terraform in the pipeline agent.
Terraform Plan generates an execution plan.
Terraform Apply deploys resources in Azure.
Once successful, the infrastructure is available.

How to Run This Project Manually
If you want to deploy this infrastructure manually using Terraform, follow these steps:

Clone the Repository
git clone https://github.com/manishabanne/Infrastructure-Automation-Terraform.git
cd Infrastructure-Automation-Terraform

Initialize Terraform
terraform init

 Plan Infrastructure
terraform plan

Deploy Infrastructure
terraform apply

Destroy Infrastructure
If you wish to destroy the resources, run:
terraform destroy

CI/CD Pipeline Setup
This project is automated using Azure DevOps Pipeline. Here's the configuration:

Pipeline YAML Configuration
The YAML file is structured as:

yaml
Copy
Edit
- task: TerraformInstaller@1
  inputs:
    terraformVersion: '1.4.6'

- task: TerraformCLI@1
  inputs:
    command: 'init'

- task: TerraformCLI@1
  inputs:
    command: 'plan'

- task: TerraformCLI@1
  inputs:
    command: 'apply'
