resource "aws_db_instance" "default" {
# Allocating the storage for database instance.
  allocated_storage    = 10
# Declaring the database engine and engine_version
  engine               = "mysql"
  engine_version       = "5.7"
# Declaring the instance class
  instance_class       = "db.t2.micro"
  name                 = "wordpress"
# User to connect the database instance 
  username             = "admin"
# Password to connect the database instance 
  password             =  random_password.db_password.result
  identifier           = "${var.env}-rds-instance"

}