# How to Deploy a CFT
- Save the YAML/JSON file (e.g., ec2-template.yaml).
- Open AWS Console → CloudFormation.
- Click Create Stack → With new resources.
- Upload the template file.
- Provide parameters (like instance type, key pair).
- Review and create.
- Wait until Stack Status = CREATE_COMPLETE.

## Key Takeaways
- CloudFormation is AWS’s IaC tool for provisioning resources.
- Templates can be written in YAML/JSON.
- Stacks = group of resources managed as a unit.
- Great for repeatability, automation, and DevOps workflows.

Every cloud provider have their own tool for IaC like
- for Microsoft azure -  Azure Resource Manager (ARM) Templates
- for GCP - Google Cloud Deployment Manager

## To work on different cloud providers we can also use other tools like
Multi-Cloud IaC Tools (applicable to all three):

### Terraform:
- A widely used open-source IaC tool by HashiCorp. Terraform allows you to define and provision infrastructure across multiple cloud providers (AWS, Azure, GCP, and others) using a declarative configuration language called HashiCorp Configuration Language (HCL).
### Pulumi:
- An open-source IaC tool that allows you to define and manage cloud infrastructure using familiar programming languages (e.g., Python, TypeScript, Go, C#). Pulumi supports various cloud providers, including AWS, Azure, and GCP.
### Ansible:
- An open-source automation engine that can be used for configuration management, application deployment, and task automation, including provisioning infrastructure on cloud platforms.
### Crossplane:
- An open-source Kubernetes add-on that extends Kubernetes to manage and provision infrastructure from various cloud providers.
