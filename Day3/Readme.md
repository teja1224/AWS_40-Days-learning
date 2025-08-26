# EC2 (Elastice Cloud Compute)
Today I started learning and practicing **EC2 (Elastic Compute Cloud)**.  
EC2 is one of the **core AWS services** and forms the foundation of running applications in the cloud.

---

## What is EC2?
- **EC2 (Elastic Compute Cloud)** = Virtual servers in the AWS cloud.  
- Instead of buying physical servers, we rent a virtual server from AWS.  
- Fully customizable → choose CPU, memory, OS, storage, and network.  
- Scales up/down as needed. (Elastic)

---

## Types of EC2
- There are different types of EC2 instances avaiable in AWS.
- We need to decide which instance depending on application or work you are doing with it.
- Types like General, Compute Optimized, Memory optimized ect and charges are vary depending on the instance you choose.

---

# AWS Region and Availability Zones
Before deep dive into EC2 we need to know about regions and availability zones.
## What is a Region?
- A **Region** is a **geographical area** where AWS has data centers.  
- Each Region consists of multiple **Availability Zones (AZs)**.  
- Example Regions:
  - `us-east-1` → N. Virginia (USA)
  - `ap-south-1` → Mumbai (India)

👉 When we create an AWS resource (like EC2, RDS, S3 bucket), we choose a **Region**.

## What is an Availability Zone (AZ)?
- An **AZ** = a **separate data center** (or multiple data centers) within a Region.  
- Each AZ has **independent power, cooling, and networking**.  
- Regions usually have 2–6 AZs.  
- Example: `us-east-1a`, `us-east-1b`

We need to decide which region to select for EC2 instance. It depends on project you are working.
If we are working on European Bank(client) then they may dont want to save there customers details outside their country.
It also helps to reduce the latency while using application of EC2. (Server needs to respond as soon as possible).

