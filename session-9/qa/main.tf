module "ec2" {
    source = "../../modules/ec2"
    ami = "ami-0c2d06d50ce30b442"
    instance_type = "t3.micro"
    env = "qa"
    bucket_name = module.s3.s3_name      # Reference to output
}
module "s3" {
    source = "../../modules/s3"
    env = "qa"
}