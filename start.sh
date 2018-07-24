#!/bin/sh
# Script to set environment paarameters for Drone and start
# Export Drone parameters for Bitbucket
cd /home/ec2-user/drone
export DRONE_IP="drone.egarteam.co.uk"
# export DRONE_IP="35.xxx.xx.xxx"
export DRONE_INTERNAL_IP="xx.xx.xx.9"
export DRONE_GITHUB_CLIENT=xxxxxxxxxxxxxxxxx
export DRONE_GITHUB_SECRET=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export DRONE_SECRET="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
export DRONE_BITBUCKET_CLIENT=xxxxxxxxxxxxxxxxxxxxxxxx
export DRONE_BITBUCKET_SECRET=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# Export container params for pushing to remote repo
export DOCKER_PASSWORD=xxxxxxx
export DOCKER_USERNAME=username
export DOCKER_REGISTRY=xxxxxxxxxxxx.dkr.ecr.eu-west-2.amazonaws.com
export DOCKER_REPO_PASSWORD=xxxxxxxxxxxxxxxxx-very-long-password-xxxxxxx==
export DOCKER_REPO_USER=AWS
echo $DOCKER_REPO_USER
echo $DOCKER_REGISTRY
echo $DOCKER_USERNAME
# Start instance
/usr/local/bin/docker-compose up

