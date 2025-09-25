Today I am going to explore AWS Lambda starting from fundamentals.

# AWS Lambda
## What is AWS Lambda?
- AWS Lambda is a serverless compute service.
- You just upload your code (Python, Node.js, Java, Go, etc.), and AWS runs it without you managing servers.
- It scales automatically and you pay only for execution time (in milliseconds).
- Simply put: Write code → Upload → AWS handles the servers.

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
