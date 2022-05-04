terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend"
    key            = "session-8/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}