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
- Fetch all snapshots owned by the account (OwnerIds=['self']).
- Fetch all running/stopped EC2 instances to get the list of in-use volumes.
- Compare snapshots’ VolumeId against active volumes.
- If a snapshot’s volume does not belong to any active instance → mark it stale.
- Delete stale snapshots to optimize costs.

## Steps to Set It Up
- IAM Role for Lambda
- Permissions needed:
  ```
  {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:DescribeInstances",
        "ec2:DescribeSnapshots",
        "ec2:DeleteSnapshot"
      ],
      "Resource": "*"
    }
  ]
} ```

## Create Lambda Function
- Runtime: Python 3.9+
- Add IAM role above.
- I used the code that is in lambda-ebs-stale-snapshots.py file we can find it in this folder.

## Triggering the Lambda
- You can run it:
- On a schedule → using CloudWatch Events/EventBridge (e.g., every 24 hrs).
- Manually for cleanup runs.

## Output
- Automatically deletes unused snapshots.
- Saves money on EBS storage.
- Keeps your environment clean and optimized.
