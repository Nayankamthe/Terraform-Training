terraform {
  backend "s3" {
    bucket = "xyz-satefile-configure"
    region = "us-east-2"
    key = "day-3/terraform.tstate"
    dynamodb_table = "terrform-state-lock-dynamo"
    
    encrypt = true
  }
}