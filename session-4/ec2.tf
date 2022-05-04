resource "aws_instance" "my_ec2" {
  count                  = var.number_of_ec2
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  user_data              = data.template_file.user_data.rendered
  
  tags = {
    Name = "${var.env}-project2"
    Name2 = format("%s-project2", var.env)
  }
}

# bootstrap = happens just once
# userdata = runs the script when your machine gets bootstrapped

// [] = list
// "" = hard coded values, string
// () = functions
// var.env = variables
// aws_instance.ec2.id = reference to resource


// How to use a prefix or suffix with variables?

// var.env-project1

// var.env = calling a variables
// -project = hardcoding

// 1. Make you code functional
// 2. Make it resusable
// 3. Make it beatufil 