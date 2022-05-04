terraform {
  backend "s3" {
    bucket         = "terraform-session-september-remote-backend"
    key            = "web/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}