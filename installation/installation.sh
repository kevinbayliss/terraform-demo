#!/bin/bash

#---Terraform Installation---#
#TERRAFORM_LATEST=
TERRAFORM_LATEST=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | awk -F[:] '{print $6}' | awk -F[/] '{print $5}' | awk -F[,] '{print $1}' | sed 's/.$//')
wget https://releases.hashicorp.com/terraform/$TERRAFORM_LATEST/terraform_"$TERRAFORM_LATEST"_linux_386.zip
unzip terraform_"$TERRAFORM_LATEST"_linux_386.zip
sudo mv terraform /usr/local/bin/
sudo rm terraform_"$TERRAFORM_LATEST"_linux_386.zip