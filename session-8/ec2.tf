resource "aws_instance" "my_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  key_name               = aws_key_pair.terraform_server.key_name

  tags = {
    Name = var.env
  }
  provisioner "file" {
    source      = "/home/ec2-user/terraform_sep_2021/session-8/index.html" #Where file is existing
    destination = "/tmp/index.html"                                        #Where you wanna send it?

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  provisioner "remote-exec" { #Act similar to CloudInit. 
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html",
      "sudo echo 'Apache's been updated' >> /var/www/html/index.html" #It runs when instance gets bootstrapped, but it does not replace the resource
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}

resource "aws_key_pair" "terraform_server" {
  key_name   = "terraform_server_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "null_resource" "local_script" { # Null Resource means do not write to tfstate file

  provisioner "local-exec" {
    command = "touch test.file"
  }
}