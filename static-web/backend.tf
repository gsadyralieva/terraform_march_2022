terraform {
  backend "s3" {
    bucket = "terraform-session-september-remote-backend"
    key    = "static-web/terraform.tfstate"
    region = "us-west-2"
  }
}