I had a great knowledge on entire CI/CD pipeline

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
