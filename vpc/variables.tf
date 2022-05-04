variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "This is a CIDR range for VPC"
}
variable "env" {
  type = string
  default = "dev"
  description = "This is an environment specification"
}

variable "app" {
  type = string
  default = "web"
  description = "This represents the application name"
}

variable "pub_sub_1" {
  type        = string
  default     = "10.0.1.0/24"
  description = "This is CIDR Range for Subnet"
}
variable "pub_sub_2" {
  type        = string
  default     = "10.0.2.0/24"
  description = "This is CIDR Range for Subnet"
}
variable "pub_sub_3" {
  type        = string
  default     = "10.0.3.0/24"
  description = "This is CIDR Range for Subnet"
}
variable "pri_sub_1" {
  type        = string
  default     = "10.0.11.0/24"
  description = "This is CIDR Range for Subnet"
}
variable "pri_sub_2" {
  type        = string
  default     = "10.0.12.0/24"
  description = "This is CIDR Range for Subnet"
}
variable "pri_sub_3" {
  type        = string
  default     = "10.0.13.0/24"
  description = "This is CIDR Range for Subnet"
}