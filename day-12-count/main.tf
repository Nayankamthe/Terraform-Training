#example1:without list varaible 
# resource "aws_instance" "myec2" {
#     ami = "ami-0230bd60aa48260c6"
#     instance_type = "t2.micro"
#     count = 2
#     tags = {
#     #   Name = "webec2"
#       Name = "webec2-${count.index}"
#     }
# }


variable "ami" {
  type    = string
  default = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = [ "dev","prod"]
}

# main.tf
resource "aws_instance" "sandbox" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.sandboxes)
 #tags = {
#     #   Name = "webec2"
#       Name = "webec2-${count.index}"
#     }
# }
  tags = {
    Name = var.sandboxes[count.index]
  }
}