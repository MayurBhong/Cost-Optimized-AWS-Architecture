# Cost Optimized Cloud Architecture on AWS

## Project Overview
This project demonstrates a cost optimized AWS cloud architecture built using Free Tier eligible services.  
The goal is to learn scalability, availability, and cost control while designing a real world cloud setup.

The architecture is intentionally minimal but follows AWS best practices.


## AWS Services Used
- Amazon EC2  
- Amazon VPC  
- Application Load Balancer  
- Auto Scaling  
- Amazon Machine Image


 ## Architecture Flow
 ![MasterHead](https://github.com/user-attachments/assets/7d008a48-45b1-4c26-851a-0a2a07dc2742)


## Architecture Overview
The architecture balances scalability and cost efficiency.

- A custom VPC provides network isolation.
- A single public subnet hosts all resources to avoid extra networking cost.
- An EC2 instance runs a basic Apache web server.
- An Application Load Balancer routes HTTP traffic.
- Auto Scaling is configured with fixed capacity.
- A custom AMI enables fast recovery and consistent deployments.



## Step by Step Implementation Process

### Step 1. Networking Setup
- Create a custom VPC with an IPv4 CIDR range.
- Create one public subnet inside the VPC.
- Attach an Internet Gateway.
- Update the route table to allow internet access.

### Step 2. EC2 Instance Launch
- Launch an EC2 instance using t2.micro or t3.micro.
- Place the instance in the public subnet.
- Assign a public IP address.
- Attach a security group allowing:
  - HTTP on port 80
  - SSH on port 22 from your IP only
- Use the default EBS root volume.

### Step 3. Web Server Configuration
- Install Apache on the EC2 instance.
- Start and enable the Apache service.
- Deploy a simple HTML page to verify access.

### Step 4. AMI Creation
- Create a custom AMI from the configured EC2 instance.
- Use the AMI for consistent and repeatable launches.

### Step 5. Auto Scaling Configuration
- Create a Launch Template using the custom AMI.
- Configure an Auto Scaling Group with:
  - Minimum capacity set to one
  - Maximum capacity set to one
  - Desired capacity set to one

### Step 6. Load Balancer Configuration
- Create an Application Load Balancer.
- Create a target group.
- Register the EC2 instance.
- Enable health checks for monitoring.


## Cost Optimization Strategy
- Use only Free Tier eligible EC2 instance types.
- Fix Auto Scaling capacity to avoid scale out.
- Avoid NAT Gateway and paid networking services.
- Use default storage configuration.
- Stop or delete resources after testing.


## Scalability and Learning Outcomes
- Load Balancer health checks demonstrate traffic routing.
- Auto Scaling policies demonstrate scaling logic without launching extra instances.
- AMI usage demonstrates fast recovery and standardized deployments.



## How to Use This Repository
- Use `setup-ec2.sh` as EC2 User Data or run it manually to configure the web server.
- Refer to `architecture.txt` for detailed architecture explanation.
- Refer to `launch-template-notes.txt` for Auto Scaling and AMI configuration details.


## Outcome
- Designed a scalable AWS architecture with strong cost control.
- Gained hands on experience with EC2, VPC, ALB, Auto Scaling, and AMI.
- Understood the cost impact of unmanaged cloud resources.
- Built a resume ready project suitable for Cloud and DevOps beginner roles.
