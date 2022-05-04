terraform {
    backend "s3" {
        bucket = "terraform-session-september-remote-backend"
        key = "session-9/qa/terraform.tfstate"
        region = "us-west-2"
    }
}

