## Creating an ECR Repository
- Go to the AWS Management Console and navigate to the Amazon ECR service.
- Click on "Create repository" to create a new repository.
- Enter a unique name for your repository and click "Create repository."

## Installing AWS CLI
- To interact with ECR from your local machine, you'll need to have the AWS Command Line Interface (CLI) installed.
- Follow the instructions in the AWS CLI User Guide in DAY10 to install it.

## Configuring AWS CLI
After installing the AWS CLI, open a terminal and run the following command to configure your CLI with your AWS credentials:
```
aws configure
```
- Enter your AWS Access Key ID, Secret Access Key, default region, and preferred output format when prompted.

## Pushing Docker Images to ECR
- Now that you have your ECR repository set up and the AWS CLI configured, let's push a Docker image to ECR.
- Build your Docker image locally using the docker build command:
- ```
  docker build -t <your-image-name> <path-to-dockerfile>
  ```
- Tag the image with your ECR repository URI:
```
  docker tag <your-image-name>:<tag> <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/<your-repository-name>:<tag>
```
- Log in to your ECR registry using the AWS CLI:
 ```
  aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com
  ```
- Push the Docker image to ECR:
```
docker push <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/<your-repository-name>:<tag>
```

