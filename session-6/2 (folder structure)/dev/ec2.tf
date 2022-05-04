resource "aws_instance" "my_ec2" {
  count                  = var.number_of_ec2
  ami                    = var.ami                       # Reference to Input Variable
  instance_type          = var.instance_type             # Reference to Input Variable
  vpc_security_group_ids = [aws_security_group.my_sg.id] # Reference to Resource
  # when you reference to resource = first-label.second-label.attribute

  tags = {
    Name = var.env
  }
}

# Any programming, String goes with ""
# Whenever you hard code something, it goes with ""
# Reference does not need or use "" 

# 1. Make it functional = Make it work
# 2. Make it reusable 
# 3. Make it beautiful 


##### COMMAND ORDERS ######
// 1. Terraform init
// 2. Terraform fmt = format
// 3. Terraform validate = syntax check
// 4. Terraform plan = an execution plan
// 5. Terraform apply/destroy = create or delete