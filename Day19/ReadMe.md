After a long gap in AWS learning series, I again entered the world of AWS.
I took a break because of office responsibilites as that work is my first priority.

Comming to the topic, Today I want to work on AWS CloudFront.
# AWS CloudFront
- CloudFront is AWS very own CDN(content Delivery Network) service.
- It integrates seamlessly with other AWS services and allows you to deliver content, videos, applications, and APIs securely with low-latency and high transfer speeds.

## CDN
- Imagine you have a website with lots of cool content, like images, videos, and documents.
- When a user visits your site from a different location far away from your server, the content might take a long time to load. That's where CDN comes to the rescue!
- A CDN is like a network of servers spread across various locations worldwide. These servers store a copy of your website's content.
- When a user requests your website, the content is delivered from the server closest to the user, making it super fast! It's like having a local store for your website content everywhere in the world.

## How Does CloudFront Work?
- Let's understand how CloudFront works with a simple example:
- Imagine you have a website with images stored on an Amazon S3 bucket (a cloud storage service). When a user requests an image, the request goes to CloudFront first.
- Here's how the process flows:
- Step 1: CloudFront checks if it already has the requested image in its cache (storage). If it does, great! It sends the image directly to the user. If not, it proceeds to Step 2.
- Step 2: CloudFront fetches the image from the S3 bucket and stores a copy in its cache for future requests. Then, it sends the image to the user.
- The next time someone requests the same image, CloudFront will deliver it from its cache, making it super fast and efficient!
