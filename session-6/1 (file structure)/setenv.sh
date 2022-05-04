#!/bin/bash

rm -rf .terraform/terraform.tfstate
ENV="$1"
sed -i ' ' -e "s|_env_|$ENV|" backend.tf
terraform init
echo "Environment is set to $ENV"


# 1. Set ENV 
# 2. Run setenv.sh
# 3. Run Terraform