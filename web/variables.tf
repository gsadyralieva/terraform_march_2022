variable "base_domain" {
  type    = string
  default = "khuslen-cyber.com"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_id" {
  type    = string
  default = "vpc-064fe67e"
}

variable "subnets" {
  type    = list(string)
  default = ["subnet-56d5597d", "subnet-3a604771"]
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "asg_max" {
  type    = number
  default = 5
}

variable "asg_desired" {
  type    = number
  default = 3
}