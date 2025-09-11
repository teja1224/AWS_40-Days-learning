For next 4 days I want to Work on AWS CI/CD

# AWS CodeCommit (Source Control in AWS)

Today I learned about **AWS CodeCommit**, which is part of AWS’s CI/CD services.  
It is similar to **GitHub** or **GitLab**, but **fully managed by AWS**.

---

## What is AWS CodeCommit?
- **CodeCommit** is a **fully managed source control service** hosted on AWS.  
- It is **secure, scalable, and Git-compatible**.  
- You can push/pull code using the same Git commands you already use with GitHub.  

---

## Key Features
1. **Git-based** → Works with existing Git tools (clone, commit, push).  
2. **Secure** → Encrypted at rest and in transit, IAM-based access control.  
3. **Scalable** → Handles large repositories and large files.  
4. **Highly Available** → Runs in AWS across multiple AZs.  
5. **Integrated** → Works seamlessly with **CodeBuild, CodeDeploy, CodePipeline** for CI/CD.

---

## Use Cases
- Store source code, scripts, configs in private repositories.  
- Central repo for CI/CD pipelines in AWS.  
- Secure alternative to GitHub/GitLab for sensitive projects.  
- Code collaboration with teams using IAM policies.

## How to Get Started with CodeCommit

### 1. Create a Repository
- Go to **AWS Console → CodeCommit → Create Repository**.  
- Give repo name (e.g., `my-aws-app-repo`).  
- (Optional) Add description and tags.  

### 2. Setup Git Credentials
- Create **IAM user** with CodeCommit access.  
- Generate **HTTPS Git credentials** or configure **SSH keys**.  
- Example IAM policy:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "codecommit:*",
      "Resource": "*"
    }
  ]
}
```

We can use normal git commands to clone and push and use this repo. First install git in our machine to use git commands.
## Clone Repo
- git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/my-aws-app-repo
- cd my-aws-app-repo

## Push Code
- git add .
- git commit -m "first commit"
- git push origin main
