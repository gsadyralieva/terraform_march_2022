# Input Variables

variable "ami" {
  type        = string
  default     = "ami-0c2d06d50ce30b442"
  description = "This is an AMI id for EC2 instance, Accepted Processor type 'x86'"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is an instance type for EC2"
}

variable "env" {
  type        = string
  default     = "qa"
  description = "This is a variable for the environments"
}

variable "number_of_ec2" {
  type        = number
  default     = "10"
  description = "Number of EC2 instances"
}

####### Default ###### = pick this as a default value
####### Type ########
# - string = !@#$%qwer789
# - number = 1234567890
# - bool   = True, False
####### Description #######
####### Sensetive  #######
