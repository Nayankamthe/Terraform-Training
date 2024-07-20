resource "aws_instance" "web" {
  ami                    = "ami-08be1e3e6c338b037"     #change ami id for different region
  instance_type          = "t2.micro"
  key_name               = "public-1"              #change key name as per your setup
  # user_data              = file("test.sh") # define your path and file name 
  user_data = file("test.sh")
     
  tags = {
    Name = "userdata-instance"
  }
}