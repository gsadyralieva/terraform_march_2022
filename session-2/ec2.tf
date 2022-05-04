resource "aws_instance" "first_ec2" {
  ami           = "ami-0be2609ba883822ec" # in JSON data, In terrafprm we call it argument (key value)
  instance_type = "t2.micro"
  tags = {
    Name        = "TheFirstEC2Instance"
    Environment = "dev"
  }
  security_groups = ["Terraform-server-SecGr"]
  key_name        = "MyMacKey"
}



# in JSON we call it data, In Terraform we czll  it argument
# ARgument =key and value, name  and value
#Key is predefined by Terraform, value is defined by author( by us)
# Terraform has only 2 types of blocks, REsource and Data source blocks.
# Each block  has it is own functionality 
# Resoirce block ois designed to create resources. Data source is designed to fetch the data from existing resources
# each block expexts 2 labels.
# The first label is predefined by Terraform,It indicates whatresource you would like to create.
# The Second label predefined by author (by us) It indicates the logical nameor Logical ID for the resources.
# Every single resource has to have a logical Name or ID