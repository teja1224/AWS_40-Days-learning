# Lets Create a VPC in AWS
## Step-1
1. Login to AWS management console.
2. Search for VPC and click on create VPC.
3. AWS autogenerates some details with options we can change according to our needs.
4. In Resource Map it provides we can know how the flow will going and subnets, routetables, security, Network connections.
5. It's the reason that AWS says Security of our instances or Apps is a **Shared Resposibility** AWS provides default security but as the end devops or admin should take care while creating according to our organization.

## Step-2
1. Create a new EC2 instance followed the instructions from day3.(hold on)
2. While creating in network setting section select the newly created VPC (AWS provide a default VPC).
3. Select the public subnet for now instead of private. (will learn about it and load balancer).
4. Firewall (security group) select the **create** one so aws will create for now. Present focus of creating vpc and see NACL and Security Group allows traffic.
5. Keep the rest same as it and click lanch instance.

## Step-3
Checking the traffic (how the NACL and SGs allowing IPs and port to access the app) simple python app that created in EC2 instance.
1. Login into your EC2 instance in MobaXTerm by using SSH (.pem file and public IP of EC2).
2. To create simple python server run :
     - python3 -m http.server 8000
     - It start a simple server running on port 8000
3. Try to access the server from the browser http://168.10.2:8000 (instance ip and port app running)
4. We wont get any response from the server as in security section in EC2 instance and see default secuirty group (by AWS).
5. We find that it only allowing port 22 as SG acts as firewall at instance level, it blocks the incoming req to server(instance) even NACL allowing at entire subnet.
6. We can check NACL configurations in VPC -> Network ACLs section can found inbound rules.
7.  I checked the different configurations by changing NACL and SG by adding rules and order matters like low number to high number in NACL.
