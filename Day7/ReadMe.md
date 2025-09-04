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
4. If we assign EC2 instance with Elastic Ip address even if the EC2 instance goes down and comes back IP address remain same. ELastic IP addres is a static Ip address.
5. Finally AWS created a VPC for me. Till now we created a VPC with pub sub pri sub and pub sub attached to the route table and internet gateway and private subnet is attached to different routetables. Other things needed is EC2 instances(where our apps are present) and loadbalancer.

### Concepts to learn before goahead in this project
1. Bastion Host (Jump host)
   - It is in public subnet helpful to connect to private subnets instead of directly connecting to private Ips.
   - from personal laptop to Bastion host(public ec2) through ssh and then to private subnets.
   - Benefits like properlogging mechanism to private Ips (who are access the apps in private ips).
   - SSH traffic goes to private subnets through bastion host.
2. Autoscaling group
   - Used to scale the instances according to the incoming traffic.
3. Loadbalancer
   - Takes the responsibility to seperate the requests incoming to 2 or more servers(instances).
   - It also checkd the computing power of instance and sends traffic according to it.
  
## Autoscaling group
1. It cannot created direct as we need launch template. As we can use this for other autoscaling group.
2. It looks like creating EC2 instance give the details. And in network setting select our vpc and create a security group.(one for ssh and other custom tcp for python app port 8000.
3. Click next and select vpc and private subnets as in autoscaling group only our private instances should be there.
4. Select group size (scaling options) -> Next.
5. Launch the autoscaling. It creates 2 instances (private), can check it in EC2 instances.
6. Instances dont have public ip address. To login we use bastion host (ec2 instance only, public).

## Create bastion host 
1. Go to ec2 and create a instance with our vpc and ssh login (network settings).
2. We need to copy(secure copy) the key value pair to bastion host instance also as we need it to login to private instances.
3. through ssh and key value pair login to public bastion host and then use the copied pem file and ssh to login to private instances.
4. If .pem file not in bastion host(public) we cannot login to private instance where our application need to  set up.

## Create a server(application) in private instance
1. create a html page and python sample server(python3 -m http.server 8000)

## create load balancer
1. Choose application load balancer with details give same vpc, public subnets.
2. We need to create target group so the load balancer will target the instances. also give sg.
3. finally we can access the application in private subnet from outside we can copy DNS name and search it. We can see content in index.html
