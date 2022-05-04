# Input Variables

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "This is an instance type for EC2"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "This is a variable for the environments"
}

variable "number_of_ec2" {
  type        = number
  default     = "1"
  description = "Number of EC2 instances"
}

####### Default ###### = pick this as a default value
####### Type ########
# - string = !@#$%qwer789
# - number = 1234567890
# - bool   = True, False
####### Description #######
####### Sensetive  #######
