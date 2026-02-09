#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Cost Optimized Web Server Running on AWS" | sudo tee /var/www/html/index.html

Script Overview
This script automates the setup of a basic Apache web server on an Amazon Linux EC2 instance. It ensures the web server is installed, started, and configured to run automatically on system reboot.

What the Script Does
Updates the operating system packages to the latest versions.
Installs the Apache HTTP server package.
Starts the Apache service immediately after installation.
Enables the Apache service to start automatically at boot time.
Creates a simple HTML page to verify successful deployment.

How It Is Used
The script can be added as EC2 User Data during instance launch.
It can also be executed manually after connecting to the instance via SSH.

Why This Approach Is Used
Automates server configuration to reduce manual setup time.
Ensures consistent configuration across instance launches.
Supports fast recovery when used with AMI and Auto Scaling.

Compatibility Notes
Designed specifically for Amazon Linux based EC2 instances.
Not intended for Ubuntu or other Linux distributions without modification.
