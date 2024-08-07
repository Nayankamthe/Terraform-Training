vpc_cidr_block = "10.0.0.0/16"
vpc_name = "cust_vpc"
aws_public_subnet_cidr_block = "10.0.0.0/24"
aws_public_subnet_name = "cust_subnet_pub"
aws_internet_gateway_name = "cust_ig"
aws_public_route_table_name = "router-pub"
aws_public_route_table_cidr_block = "0.0.0.0/0"
aws_security_group_name = "cust_security_group"
aws_security_group_description = "ssh and http inboud rule"
aws_security_group_tags-name = "dev_sg"
ami = "ami-0649bea3443ede307"
instance_type = "t2.micro"
key_name = "public-1"
tags-name = "cust-EC2-1"
tags-name-private = "cust-private-EC2-1"