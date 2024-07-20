resource "aws_instance" "import" {
  ami = ""
  instance_type = ""
  tags ={
    Name="cust-EC2-1"
  }
}






// terraform import aws_instance.import <resource id>
// terraform import aws_instance.import i-090960f98f38c277f 