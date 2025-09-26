# Cost Optimization with Lambda: Delete Orphaned Snapshots

## Problem
start with simple problem to understand the flow of Lambda with other services.

- When you terminate an EC2 instance, its volumes are deleted (if set) but snapshots remain.
- These orphaned snapshots increase storage costs.
- We want a Lambda function that:
- Detects when an EC2 instance is deleted.
- Finds snapshots associated with that instance.
- Deletes them automatically.

## Flow
- CloudWatch Event / EventBridge Rule → Trigger Lambda when EC2 instance is terminated.
- Lambda Function (Python + boto3) →
- Identify the terminated instance.
- List snapshots created for its volumes.
- Delete the snapshots.
- CloudWatch Logs → Verify deletions.

## Steps to Set It Up
- IAM Role for Lambda
- Permissions needed:
  ```
  {
  "Effect": "Allow",
  "Action": [
    "ec2:DescribeSnapshots",
    "ec2:DeleteSnapshot"
  ],
  "Resource": "*"
} ```

## Create Lambda Function
- Runtime: Python 3.9+
- Add IAM role above.
- I used the code that is in lambda-ec2.py file we can find it in this folder.
