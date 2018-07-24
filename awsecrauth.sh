#!/bin/sh
# Script to authenticate to AWS ECR repositories"
aws ecr get-login > ./ecrlogin.sh
sed -i 's/-e none//g' ./ecrlogin.sh
chmod +x ./ecrlogin.sh
sudo ./ecrlogin.sh

