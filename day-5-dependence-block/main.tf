resource "aws_instance" "test" {
    ami = "ami-08be1e3e6c338b037"
    instance_type = "t2.micro"
    key_name = "public-1"
  
}

resource "aws_s3_bucket" "test" {
    bucket = "xyz-werte-bucket"
    depends_on = [aws_instance.test]
}