resource "aws_eip" "dev" {
  domain = "vpc"
}
resource "aws_nat_gateway" "dev" {
  allocation_id = aws_eip.dev.id
  subnet_id = aws_subnet.dev.id
  tags = {
    Name= "gw NAT"
  }
  depends_on = [ aws_internet_gateway.dev ]
}