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

