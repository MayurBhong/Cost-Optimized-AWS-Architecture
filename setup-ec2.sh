#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Cost Optimized Web Server Running on AWS" | sudo tee /var/www/html/index.html

Purpose
This script installs and starts the Apache web server on an Amazon Linux EC2 instance. It creates a simple web page to confirm successful deployment.

Usage
Use this script as EC2 User Data or run it manually after connecting to the instance.

Notes
This script is intended for Amazon Linux based EC2 instances.