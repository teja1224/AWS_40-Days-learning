Today i am going to start a project to demonstrate all the skills like ec2, vpc, ect. that I learned so far.

- create a VPC that you can use for servers in a production environment.
-  To improve resiliency, you deploy the servers in two Availability Zones, by using an Auto Scaling group and an Application Load Balancer.
-  For additional security, you deploy the servers in private subnets. The servers receive requests through the load balancer.
-  The servers can connect to the internet by using a NAT gateway. To improve resiliency, you deploy the NAT gateway in both Availability Zones.

---
I followed the AWS documentation page I provided the link below.<br>
https://docs.aws.amazon.com/vpc/latest/userguide/vpc-example-private-subnets-nat.html
## Project I worked on
1. Create a VPC
   - Open VPC in AWS and choose create VPC. For resources to create choose VPC and more.
   - Its auto chooses the specifications like creating public and private subnets, routetables,etc.
2. Public subnets-2, NAT-1 gateway per AZ, AZs-2 and I make VPC endpoints NONE (S3 is not covered)
3. CLick on create then AWS created a bunch of resources.
   - I found a issue with elastic IP addresses that shwoing maximum public IP addresses reached.
   - Go to ec2 -> Elastic IPs -> found previous work public Ip addresses -> release those IPs.
   - Back to VPC and CLick on retry. Then it got successful.
