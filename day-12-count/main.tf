#example1:without list varaible 
# resource "aws_instance" "myec2" {
#     ami = "ami-08be1e3e6c338b037"
#     instance_type = "t2.micro"
#     count = 2
#     tags = {
#     #   Name = "cust-instnace"
#       Name = "cust-instnace-${count.index}"
#     }
# }




# main.tf
resource "aws_instance" "sandbox" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.sandboxes)
 #tags = {
#     #   Name = "cust-instance"
#       Name = "cust-instnace-${count.index}"
#     }
# }
  tags = {
    Name = var.sandboxes[count.index]
  }
}