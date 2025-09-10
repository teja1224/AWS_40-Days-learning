# Infrastructure as Code (IaC) with AWS CloudFormation

Today I started learning about **Infrastructure as Code (IaC)** using **AWS CloudFormation (CFT)**.<br>
Instead of manually creating resources via Console or CLI, IaC allows us to define and provision AWS infrastructure in code.

---

## What is IaC?
- **Infrastructure as Code (IaC)** means managing and provisioning infrastructure through **code files** instead of manual processes.
- Makes infrastructure **repeatable, consistent, and version-controlled** (like software).

---

## Why CloudFormation?
- **Automation** → One template can create entire stacks (VPC, EC2, S3, IAM, etc.).  
- **Repeatability** → Same template can be reused across multiple environments.  
- **Version Control** → Templates can be stored in GitHub.  
- **Dependency Handling** → Resources are created in the correct order.  
- **Rollback Support** → If stack creation fails, CloudFormation rolls back changes.  

---

## CloudFormation Basics
- A **CloudFormation Template (CFT)** is a **JSON or YAML** file.  
- It describes the AWS resources to be created.  
- Resources are created as a **Stack** (a single unit of deployment).

### Template Structure
1. **AWSTemplateFormatVersion** → Version (optional).  
2. **Description** → Info about the stack.  
3. **Parameters** → User inputs (e.g., instance type).  
4. **Resources** → Actual AWS resources (mandatory).  
5. **Outputs** → Values to return after stack creation (e.g., public IP).  

---

