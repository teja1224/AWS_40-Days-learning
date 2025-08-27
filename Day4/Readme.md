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
   - Public Subnet → Accessible from the internet (e.g., web servers).
   - Private Subnet → Internal only (e.g., databases, backend services).

2. **Internet Gateway (IGW)**
   - Enables communication between VPC resources and the internet.

3. **Route Tables**
   - Rules that control where network traffic is directed inside your VPC.

4. **NAT Gateway**
   - Lets instances in private subnets connect to the internet *outbound only*.

5. **Security Groups (SG)**
   - Virtual firewall for EC2 instances (stateful).

6. **Network ACLs (NACLs)**
   - Firewall for subnets (stateless).

---
