I had a great knowledge on entire CI/CD pipeline by yesterday. Moving forward in this Journey.

# AWS Cloud Watch
Today I am going to work deep-dive on cloudwatch in Aws which is one of the powerful service in AWS.

Amazon CloudWatch is AWS’s monitoring and observability service.
It helps you collect, analyze, and act on data from your AWS resources, applications, and services.

---

## Key Features

1. Metrics
- Numeric data points (e.g., CPU utilization, memory, disk usage, API requests).
- Every AWS service (EC2, Lambda, RDS, S3, etc.) sends metrics to CloudWatch automatically.

2. Logs
- Stores log data from apps and services.
- Example: EC2 system logs, Lambda function logs, or your application’s logs.

3. Alarms
- Set thresholds on metrics (e.g., “Alert me if CPU > 80% for 5 minutes”).
- Can trigger actions like SNS notifications, Auto Scaling, or EC2 reboot.

4. Dashboards
- Custom dashboards with graphs/charts for real-time monitoring.

5. Events (now called EventBridge)
- Respond to changes in AWS resources (e.g., trigger a Lambda when an EC2 instance stops).

---

## Common Use Cases
- Monitor EC2 instances: CPU, memory, disk, and network.
- Track application logs: Centralized logging for debugging.
- Set alarms for scaling: Auto Scale EC2/Lambda based on demand.
- Security monitoring: Detect unusual API activity with CloudWatch + GuardDuty.
- Billing alerts: Get notified when costs exceed a budget.

  ---

## Example Scenarios in Real time Projects
- DevOps Engineer: Sets alarms on CPU usage to auto-scale EC2 instances.
- Developer: Sends application logs from Flask/Django app on EC2 to CloudWatch Logs.
- SRE: Creates a CloudWatch dashboard to monitor multiple services in one view.
- Finance team: Uses CloudWatch + Billing metrics to get monthly cost alerts.

## How it Fits in Our CI/CD Project
- CodeDeploy + CloudWatch Logs → View deployment logs from EC2 instances.
- CloudWatch Alarms → Notify if deployment fails or app crashes.
- CloudWatch Dashboards → Monitor app health after deployment.
- In this way we need to check our service usage and information about services easily to take neccessary action to any errors or cost optimization for smooth work flow.

Really amazed with the power of AWS Cloud watch and its capabilities.
