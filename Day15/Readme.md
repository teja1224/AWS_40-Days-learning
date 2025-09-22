Yesterday, I work on creating codebuild for simple python app and also write buildspec.yml file to build the project and also push image to docker.

Today I focused on connecting a codepipeline to integrate the github repo to codebuild to automatically trigger the codebuild when any changes or commits in repo.

# Day 15 – CI Pipeline for Python Project using AWS CodePipeline

Today I connected my **Python project on GitHub** with **AWS CodePipeline** and **CodeBuild** so that builds run automatically on each commit.

---

## Workflow
1. Push code → GitHub repository.  
2. **CodePipeline** triggers automatically.  
3. **CodeBuild** runs build & tests using `buildspec.yml`.  
4. Build artifacts are stored in **S3 bucket**.  

---

## Steps to Create Pipeline
1. Go to **AWS CodePipeline → Create pipeline**.  
2. Name: `python-ci-pipeline`.  Choose custom pipeline
3. Source Stage:
   - Provider: **GitHub**.  
   - Repo: `my-python-project`.  
   - Branch: `main`.  
   - Creates webhook for auto-trigger.  
4. Build Stage:
   - Provider: **CodeBuild**.  
   - Project: Select the Python CodeBuild project.  
5. (Optional) Deployment Stage → to be added later.  I'll do deploy later present focused on CI
6. Review and Create pipeline.  

---

## Outcome
- Every push to GitHub now automatically triggers a build.  
- Developers get immediate feedback on build success/failure.  
- Artifacts are ready in S3 for deployment.  

---

Successfully, created a codepipeline(orchestrater) for codebuild and connect my github repo.<br>
Checked wheather the commit or change in my repo is triggering or invokeing the codepipeline->codebuild and observed that codebuild is triggered and by seeing build history and also my docker account.
<br>
Next want to focus on deploy (continous delivery) with EC2 instance.
