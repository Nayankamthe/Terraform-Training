resource "aws_instance" "dev" {
  ami = var.ami
  key_name = var.key_name
  instance_type = var.instance_type
  subnet_id = aws_subnet.dev.id
  vpc_security_group_ids = [ aws_security_group.dev.id ]
  tags = {
    Name= var.tags-name
  }
}

resource "aws_instance" "dev-private" {
  ami = var.ami
  key_name = var.key_name
  instance_type = var.instance_type
  subnet_id = aws_subnet.dev-private.id
  vpc_security_group_ids = [aws_security_group.dev.id]
  tags = {
    Name= var.tags-name-private
  }
}

