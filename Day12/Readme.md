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
