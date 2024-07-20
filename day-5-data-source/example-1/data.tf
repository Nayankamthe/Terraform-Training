data "aws_ami" "amzlinux" {
  most_recent = true
  owners = ["amazon"]
  filter{
    name = "name"
    values = ["al2023-ami-2023.5.20240708.0-kernel-6.1-x86_64"]
  }
  filter{
    name = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
  
}

data "aws_ec2_instance_type_offering" "t2-micro" {
  filter {
    name   = "instance-type"
    values = ["t2.micro", "t3.micro"]

  }
  preferred_instance_types = ["t2.micro"]
}

data "aws_vpc" "vpc" {
  filter {
    name = "tag:Name"
    values = ["cust_vpc"] #giv your vpc name 
  }
}

data "aws_subnet" "subnet" {
  filter {
    name = "tag:Name"
    values = ["cust_subnet_pub"] # give your subnet name 
  }
}

data "aws_security_group" "sg-1" {
  filter {
    name = "tag:Name"
    values = [ "dev_sg" ] # add security group name
  }

}