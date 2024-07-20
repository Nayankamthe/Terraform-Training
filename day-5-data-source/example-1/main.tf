# resource "aws_instance" "dev" {
#   ami = data.aws_ami.amzlinux.id
#   instance_type = data.aws_ec2_instance_type_offering.t2-micro.instance_type
#   tags = {
#     Name="cust-instance-dev"
#   }
# }

resource "aws_instance" "dev" {
  ami =data.aws_ami.amzlinux.id
  instance_type = data.aws_ec2_instance_type_offering.t2-micro.instance_type
  key_name= "public-1"
  vpc_security_group_ids = [ data.aws_security_group.sg-1.id ]
  subnet_id =  data.aws_subnet.subnet.id
  tags = {
    Name = "DataSource-Instance"
  }
}