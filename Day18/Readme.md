Today I am going to explore AWS Lambda starting from fundamentals.

# AWS Lambda
## What is AWS Lambda?
- AWS Lambda is a serverless compute service.
- You just upload your code (Python, Node.js, Java, Go, etc.), and AWS runs it without you managing servers.
- It scales automatically and you pay only for execution time (in milliseconds).
- Simply put: Write code → Upload → AWS handles the servers.
- Also involves in cost optimization.


AWS Lambda is event-driven serverless service where it will auto allocate the servers according to the application in lambda and autoscales it.<br>
We allow focus on application and lambda will handles the servers. but we donot have control over the server like ec2 for ip addressing, autoscaling ect.

## Key Concepts
### Function
- A Lambda unit of execution (your code + configuration).
- Example: resizeImageFunction.

### Trigger (Event Source)
- Something that invokes your Lambda (e.g., API Gateway, S3, DynamoDB, CloudWatch Event, SNS).
- Example: Upload a file to S3 → trigger Lambda → process file.

### Execution Role (IAM Role)
- Grants permissions (e.g., allow Lambda to read from S3, write to DynamoDB).

### Handler
- The entry point of your Lambda function.
- Example in Python: def lambda_handler(event, context):

### Timeout & Memory
- Configure max execution time (default: 3 sec, max: 15 min).
- Memory also affects CPU power.

## How Lambda Works (Flow)
- An event occurs (e.g., HTTP request, file upload, DB change).
- Lambda runs your function in a container AWS provides.
- Function executes with allocated memory/CPU.
- Returns response → container may be reused (cold start vs warm start).

## Supported Languages
- Node.js, Python, Java, Go, C#, Ruby
- Also supports custom runtimes (bring your own runtime).

## Common Use Cases
- S3 Automation → Process images/files after upload.
- API Backend → Use API Gateway + Lambda for REST APIs.
- Real-time Processing → Process Kinesis/DynamoDB streams.
- Scheduled Jobs → Run CRON jobs using CloudWatch Events.
- Event-driven Microservices → Decouple services with SNS + Lambda.
