#!/bin/sh
apt update -y
apt install -y docker
service docker start
usermod -aG docker ec2-user
docker swarm init
docker service create --replicas 1 --name registry --publish 5000:5000 --publish 8081:8081 sonatype/nexus3:3.6.2
terraform apply -var-file=variables.tfvars
