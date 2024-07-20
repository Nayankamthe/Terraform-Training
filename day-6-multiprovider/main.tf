provider "aws" {
  region = "us-east-2"
}

#Another provider alias 
provider "aws" {
  region = "us-east-1"
  alias = "america"
}

resource "aws_s3_bucket" "dev" {
  bucket = "zyx-lhnlkkn"

}
resource "aws_s3_bucket" "dev2" {
  bucket = "zyz-ilnkehn"
  provider = aws.america  #provider.value of alias
  
}