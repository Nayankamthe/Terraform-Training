resource "null_resource" "empty_bucket" {
  provisioner "local-exec" {
    command = "aws s3 rm s3://xyz-satefile-configure --recursive"
  }
}
resource "aws_s3_bucket" "dev" {
  bucket = "xyz-satefile-configure"
  depends_on = [null_resource.empty_bucket]

}


resource "aws_dynamodb_table" "dev" {
  name = "terrform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}