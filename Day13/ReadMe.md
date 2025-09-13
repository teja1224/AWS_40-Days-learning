Today I focused on understanding the **entire CI/CD pipeline** before going deep into individual AWS services.  
CI/CD is the foundation of modern software delivery.

---

## What is CI/CD?
- **CI (Continuous Integration)** → Developers frequently merge code changes into a central repo. Automated builds and tests run to catch issues early.  
- **CD (Continuous Delivery/Deployment)** → The pipeline automatically delivers tested code to production (or staging) environments.  

Together, CI/CD ensures **faster releases**, **better quality**, and **less manual work**.

---

## Benefits of CI/CD
1. **Automation** – No need for manual deployments.  
2. **Faster Feedback** – Bugs are caught early via automated tests.  
3. **Consistency** – Same process every time → fewer errors.  
4. **Scalability** – Works for small teams and large enterprises.  
5. **Security** – Policies, approvals, and scanning integrated in pipeline.  

---

## CI/CD Pipeline Flow

1. **Code (Source Stage)**  
   - Developer pushes code to **Git repo** (GitHub, GitLab, AWS CodeCommit).  

2. **Build (Build Stage)**  
   - Code is compiled, dependencies installed, unit tests run.  
   - Artifacts are created (e.g., `.jar`, `.zip`, Docker image).  
   - Tools: **AWS CodeBuild, Jenkins, GitHub Actions**.  

3. **Test (Test Stage)**  
   - Automated integration tests run (API tests, UI tests, security scans).  
   - Ensures quality before deployment.  

4. **Deploy (Deploy Stage)**  
   - Application is deployed to staging or production environment.  
   - Tools: **AWS CodeDeploy, Elastic Beanstalk, ECS, Lambda, Kubernetes**.  

5. **Release (Delivery)**  
   - Application goes live for users.  
   - Canary, Blue-Green, or Rolling deployments for safe releases.  

---

## AWS CI/CD Services

| Stage      | AWS Service         | Purpose |
|------------|--------------------|---------|
| Source     | **AWS CodeCommit** | Store source code (Git). |
| Build      | **AWS CodeBuild**  | Build & test code, create artifacts. |
| Deploy     | **AWS CodeDeploy** | Deploy to EC2, Lambda, ECS, etc. |
| Orchestration | **AWS CodePipeline** | Automate entire CI/CD pipeline (connects all stages). |

---
