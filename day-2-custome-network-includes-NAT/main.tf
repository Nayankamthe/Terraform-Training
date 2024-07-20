resource "aws_vpc" "dev" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "dev" {
  vpc_id = aws_vpc.dev.id
  cidr_block = var.aws_public_subnet_cidr_block
  tags = {
    Name= var.aws_public_subnet_name
  }
}

resource "aws_subnet" "dev-private" {
  vpc_id = aws_vpc.dev.id
  cidr_block = var.aws_private_subnet_cidr_block
  tags = {
    Name= var.aws_private_subnet_name
  }
}
resource "aws_internet_gateway" "dev" {
  vpc_id = aws_vpc.dev.id
  tags = {
    Name=var.aws_internet_gateway_name
  }
}

resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    route {
        cidr_block = var.aws_public_route_table_cidr_block
        gateway_id = aws_internet_gateway.dev.id
        
    }
    tags = {
      Name=var.aws_public_route_table_name
    }
}

resource "aws_route_table" "dev-private" {
  vpc_id = aws_vpc.dev.id
  tags = {
      Name=var.aws_private_route_table_name
    }
  route {
    cidr_block = var.aws_private_subnet_cidr_block
    nat_gateway_id = aws_nat_gateway.dev.id
  }
}

resource "aws_route_table_association" "dev" {
  route_table_id = aws_route_table.dev.id
  subnet_id = aws_subnet.dev.id
}

resource "aws_route_table_association" "dev-private" {
  route_table_id = aws_route_table.dev-private.id
  subnet_id = aws_subnet.dev-private.id
}

resource "aws_security_group" "dev" {
    name = var.aws_security_group_name
    description = var.aws_security_group_description
    vpc_id = aws_vpc.dev.id
    tags = {
      Name = var.aws_security_group_tags-name
    }

    ingress {
        description = "TLS from VPC"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        description = "TLS from VPC"
        from_port =22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}