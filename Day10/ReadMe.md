# AWS CLI

Today I am going to learn about AWS CLI (command line interface).<br>
AWS CLI is super important once you start automating instead of clicking in the console.

---

## What is AWS CLI?
- **AWS CLI** is a command-line tool that allows you to interact with AWS services directly from your terminal or command prompt.
- Instead of using the AWS Management Console (UI), you can run commands to create, update, and manage AWS resources.
- It is available for Windows, macOS, and Linux.

---

## Benefits of AWS CLI
1. **Automation** → Useful for scripting and DevOps workflows.  
2. **Speed** → Faster than clicking through the AWS Console.  
3. **Consistency** → Same command works across environments.  
4. **Integration** → Works well with CI/CD pipelines (Jenkins, GitHub Actions).  
5. **Multi-Account & Multi-Region Support** → Easily switch profiles.

---

## Getting Started

### 1. Install AWS CLI
- Download from: [AWS CLI Installer](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

Check version:
```sh
aws --version
```

## Configure AWS CLI
It will ask for:
- AWS Access Key ID
- AWS Secret Access Key
- Default region (e.g., us-east-1)
- Default output format (json, table, text)

---

## Common AWS CLI Commands
S3
- aws s3 ls                       # List all buckets
- aws s3 mb s3://mybucket         # Make new bucket
- aws s3 cp file.txt s3://mybucket/   # Upload file
- aws s3 sync ./site s3://mybucket   # Sync local folder to bucket

EC2
- aws ec2 describe-instances
- aws ec2 start-instances --instance-ids i-1234567890abcdef
- aws ec2 stop-instances --instance-ids i-1234567890abcdef

IAM
- aws iam list-users
- aws iam create-user --user-name myuser

## Summary
- AWS CLI = Automation + Speed + Scripting.
- Useful for DevOps, CI/CD pipelines, and managing large AWS environments.
- It complements the AWS Console — both can be used together depending on the scenario.
