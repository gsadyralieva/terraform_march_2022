terraform {
  backend "s3" {
    bucket = "terraform-session-september-remote-backend"
    key    = "session-5/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}

// FIFO = First in First Out

// Whoever runs terraform apply first, that change will apply first