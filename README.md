Cost Optimized Cloud Architecture on AWS



Project Overview

This project demonstrates a cost optimized AWS cloud architecture designed using Free Tier eligible services. The goal is to understand scalability concepts while keeping infrastructure cost minimal.



AWS Services Used

EC2

VPC

Application Load Balancer

Auto Scaling

AMI



Architecture

A custom VPC is created with a single public subnet and an Internet Gateway. An EC2 instance runs a basic web server. Traffic is routed through an Application Load Balancer. Auto Scaling is configured with fixed capacity to prevent additional instances. A custom AMI is created from the configured EC2 instance for recovery and standard deployment.



Cost Optimization Strategy

Free Tier eligible EC2 instance types are used.

Auto Scaling minimum and maximum capacity are set to one.

No NAT Gateway or paid networking services are used.

Resources are stopped or deleted after testing.



Scalability Learning

Load balancer health checks demonstrate request routing.

Auto Scaling policies demonstrate scaling behavior without increasing instance count.

AMI usage demonstrates fast recovery and consistent deployments.



Implementation Summary

Create a custom VPC and public subnet.

Launch an EC2 instance and configure a web server.

Create a custom AMI from the instance.

Create a Launch Template using the AMI.

Configure Auto Scaling Group with fixed capacity.

Attach Application Load Balancer for traffic routing.



How to Use This Repository

Use setup-ec2.sh to configure the EC2 web server.

Refer to architecture.txt for detailed architecture explanation.

Refer to launch-template-notes.txt for Auto Scaling and AMI details.



Outcome

Learned how to design scalable AWS architecture while controlling cost.

Gained hands on experience with core AWS services.

Understood cost impact of unmanaged cloud resources.

