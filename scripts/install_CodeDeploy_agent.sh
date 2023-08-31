#!/bin/bash

# Set your region and CodeDeploy bucket name here
region="ap-south-1"
bucket_name="aws-codedeploy-ap-south-1"

# Update the system and install necessary packages
sudo yum update -y
sudo yum install ruby wget -y

# Change directory to /home/ec2-user
cd /home/ec2-user

# Download and install the CodeDeploy agent
install_script_url="https://$bucket_name.s3.$region.amazonaws.com/latest/install"
install_script="./install"

# Check if the script already exists
if [ ! -f "$install_script" ]; then
    wget "$install_script_url"
fi

# Check if the download was successful
if [ -f "$install_script" ]; then
    chmod +x "$install_script"
    sudo "$install_script" auto
else
    echo "Failed to download the installation script."
    exit 1
fi

