terraform {
    required_version = "~> 1.1.0" #Terraform version
    required_providers {           # Provider version
      aws = {
          source = "hashicorp/aws"
          version = "~>4.7.0"    # "~>4.7.0" =4.7.0 < x < 4.8.0"
      }
    }
    
}