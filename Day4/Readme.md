# AWS VPC (Virtual Private Cloud)
Today I am going to work on VPC and will learn from basics.<br>
A Virtual Private Cloud (VPC) is your own private, isolated section of the AWS cloud where you can launch and manage your resources (EC2, RDS, etc.).
<br>
We know difference between private and public cloud. We can say VPC is like your own private data center inside AWS.
<br>
In other words, VPC is an isolated section of the AWS Cloud where you can launch AWS resources in your own virtual network.  
It gives you complete control over your networking environment — including IP address ranges, subnets, route tables, and network gateways.

---

## Key Components of VPC
1. **Subnets**
   - Subnet is a range of ip addressed in your VPC. A subnet must reside in a single Availability Zone. After you add subnets, you can deploy AWS resources in your      VPC.
   - Public Subnet → Accessible from the internet (e.g., web servers).
   - Private Subnet → Internal only (e.g., databases, backend services).

2. **IP Addressing**
   - You can assign IP addresses, both IPv4 and IPv6, to your VPCs and subnets.
   - You can also bring your public IPv4 and IPv6 GUA addresses to AWS and allocate them to resources in your VPC, such as EC2 instances, NAT gateways, and Network      Load Balancers.
3. **Internet Gateway (IGW)**
   - Enables communication between VPC resources and the internet.

4. **Route Tables**
   - Rules that control where network traffic is directed inside your VPC.

5. **Gateways and endpoints**
   - A gateway connects your VPC to another network. For example, use an internet gateway to connect your VPC to the internet.
   - Use a VPC endpoint to connect to AWS services privately, without the use of an internet gateway or NAT device.

6. **VPC Flow Logs** 
   - A flow log captures information about the IP traffic going to and from network interfaces in your VPC.

7. **VPN connections**
   - Connect your VPCs to your private(on- premise) networks using AWS VPN (Virtual Private Network).
    
8. **NAT Gateway**
   - Lets instances in private subnets connect to the internet *outbound only*.

9. **Security Groups (SG)**
   - Virtual firewall for EC2 instances (stateful).
   - A security group acts as a virtual firewall for instances (EC2 instances or other resources) within a VPC.
   - It controls inbound and outbound traffic at the instance level.
   - Security groups allow you to define rules that permit or restrict traffic based on protocols, ports, and IP addresses.  

10. **Network ACLs (NACLs)**
   - Firewall for subnets (stateless).
   - A Network Access Control List is a stateless firewall that controls inbound and outbound traffic at the subnet level.
   - It operates at the IP address level and can allow or deny traffic based on rules that you define.
   - NACLs provide an additional layer of network security for your VPC.

---
I used AWS Docs link below <br> to explore more.
https://docs.aws.amazon.com/vpc/latest/userguide/vpc-example-private-subnets-nat.html
---
