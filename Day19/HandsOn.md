# Setting Up CloudFront on AWS

## Step 1: Create an S3 Bucket
- Go to the AWS Management Console and navigate to Amazon S3.
- Create a new bucket to store your website content.
- Make sure to disable the public access to s3 bucket

## Step 2: Upload Content to the S3 Bucket
- Upload images, videos, or any other content you want to serve through CloudFront to your S3 bucket.
- I uploaded a sample html file.

## Step 3: Create a CloudFront Distribution
- Go to the AWS Management Console and navigate to CloudFront.
- Click "Create Distribution."
- Choose whether you want to deliver a web application or content (like images and videos).
- Configure your settings, such as the origin (your S3 bucket), cache behaviors, and security settings.(not gone deep at present)
- Click "Create Distribution" to set up CloudFront.

## Step 4: Update Website URLs
- Once your CloudFront distribution is deployed (it may take a few minutes), you'll get a CloudFront domain name (e.g., d1a2b3c4def.cloudfront.net).
- Replace the URLs of your website content with the CloudFront domain name.
That's it! Our content is now being delivered through CloudFront.
