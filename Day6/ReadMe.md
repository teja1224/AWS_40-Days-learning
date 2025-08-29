Today I leanred about **Route53**.

# Route53
Amazon Route 53 is AWS’s scalable and highly available Domain Name System (DNS) service.
It connects user requests (like typing www.example.com) to AWS resources (EC2, S3, CloudFront, etc.) or external servers.

- we can purchase Domain name in AWS route53 or If we want we can purchase domain from GODADDY and we can configure it in AWS Route53
- Domain registration and Hosted Zones for maintaining records like domain name and related IP Address.

  ## WHY the name Route53
  - "Route" → because it’s a routing service for DNS queries (it routes traffic to your AWS resources).
  - "53" → because 53 is the default TCP/UDP port used by DNS servers worldwide.
  - Route (traffic routing) + 53 (DNS port) = Route 53
 
  ## Monitoring health check of our web servers
  - It sends a req to web server for every one to two minutes to check the web servers that are in different AZs are active or not.
