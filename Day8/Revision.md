As I am learning AWS and covered some imp concetps I just want to make a quick revision on what I worked on.<br>So it makes my mind clear over the topics as well as raises questions to research on topics.
# VPC with Bastion Host, Load Balancer & EC2 Flow

Today I worked on revision over connecting multiple AWS concepts together:  
**VPC + Bastion Host + Load Balancer + EC2 instances**.

This is a **real-world architecture** that provides **security + scalability + high availability**.

---

## Setup Overview
- **VPC** → Private network in AWS.  
- **Public Subnet** → Internet-facing components (Load Balancer, Bastion Host, NAT Gateway).  
- **Private Subnet** → Secure components (EC2 app servers, databases).  
- **Bastion Host (Jump Box)** → Secure entry point for admins (via SSH).  
- **Load Balancer (ALB)** → Accepts user traffic and distributes it across EC2 instances.  

---

## Traffic & Access Flow

### 1. **SSH Access (Admin → Bastion Host → Private EC2s)**
- Admin connects from local laptop to **Bastion Host** in the public subnet using SSH + Key Pair.  
- From Bastion Host, admin connects to EC2 instances inside private subnets.  
- Private EC2s **do not have public IPs** → only reachable through Bastion Host.  

---

### 2. **Web Traffic (User → Load Balancer → EC2s)**
- A user opens `http://myapp.com` in the browser.  
- The request goes to the **Load Balancer (ALB)** in the public subnet.  
- The LB forwards traffic to the **Target Group** → registered EC2 instances in the private subnet.  
- The EC2 processes the request → response goes back to the user via LB.  

---

### 3. **Outbound Internet Access (Private EC2 → NAT Gateway → Internet)**
- Private EC2 instances may need outbound internet access (e.g., software updates).  
- They cannot connect directly (no public IP).  
- Instead, traffic flows through a **NAT Gateway** in the public subnet.  

