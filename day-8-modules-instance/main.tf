resource "aws_instance" "dev" {
  ami = var.ami_linux
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Name= var.instance_name
  }
}