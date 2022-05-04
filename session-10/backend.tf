terraform {
    backend "s3" {
        bucket = "terraform-session-september-remote-backend"
        key = "session-10/terraform.tfstate"
        region = "us-west-2"
    }
}

