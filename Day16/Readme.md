Today I want to work on codedeploy to CD (continuous delivery)

# AWS CodeDeploy with EC2 (Manual Deployment from GitHub)

I worked on setting up **AWS CodeDeploy** to deploy a Python application from **GitHub** directly onto an **EC2 instance**, without using artifacts or a load balancer.

---

## Steps I Followed

### 1. Create a CodeDeploy Application
- Name: `simple-python-app`.  
- Platform: **EC2/On-premises**.  

---

### 2. Launch EC2 Instance
- Created an **EC2 instance** (Amazon Linux 2).  
- Added a **tag** (e.g., `Name=CodeDeployInstance`) so that CodeDeploy can identify this instance later.  

---

### 3. Install CodeDeploy Agent on EC2
Installed the CodeDeploy agent using AWS documentation:

```sh
sudo yum update -y
sudo yum install ruby -y
sudo yum install wget -y
cd /home/ec2-user
wget https://aws-codedeploy-${AWS_REGION}.s3.${AWS_REGION}.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start

```

## Setup IAM Roles
- Service Role for CodeDeploy → allows CodeDeploy to manage deployments.
- IAM Role for EC2 → allows EC2 instance to communicate with CodeDeploy and S3.

## Create Deployment Group
- Deployment group inside CodeDeploy app: simple-python-app-group.
- Target: EC2 instance selected by tag.
- Load balancer: Not enabled (simple setup).

## Create Deployment
- Choose GitHub as the source provider.
- Connected my GitHub repo containing the app code.
- Added an appspec.yml file in the root of the GitHub project to define deployment instructions.
- You can find the appspec.yml in Day14 folder as i need to maintain all project files in single folder.

## Connect to codepipeline (Add codedeploy to codepipeline flow after the build)
- Now edit the pipeline and add stage, give the codedeploy details like app name, deployment group ect.
- Trobbleshoot the errors as we learn by solving the errors and debugging. checking ec2 instance and viewevents in codedeploy.

## Outcome
- Successfully deployed my Python application to EC2 directly from GitHub using CodeDeploy.
- CodeDeploy agent on EC2 handled the deployment lifecycle as defined in appspec.yml.
- In this project I understand overall CI/CD pipeline with simple project and setup. Will go deeper in upcoming projects.
