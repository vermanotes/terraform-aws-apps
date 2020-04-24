provider "aws" {

}


module "my_vpc" {
  source      = "../modules/aws-vpc"
  vpc_cidr    = "192.168.0.0/16"
  tenancy     = "default"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "192.168.1.0/24"
}

module "my_ec2" {
  source = "../modules/aws-ec2"
  instance_count = 2
  instance_type = "t2.micro"
  ami_id = "ami-0dff4318d85149d5d"
  subnet_id = "${module.my_vpc.subnet_id}"
}
