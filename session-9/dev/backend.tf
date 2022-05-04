terraform {
    backend "s3" {
        bucket = "terraform-session-september-remote-backend"
        key = "session-9/dev/terraform.tfstate"
        region = "us-west-2"
    }
}

