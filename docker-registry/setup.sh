#!/bin/sh
apt update -y
apt install -y docker
service docker start
usermod -aG docker ec2-user
docker swarm init
terraform apply -var-file=variables.tfvars
