resource "aws_s3_bucket" "my_s3_bucket"{
  bucket = "terrafor-sanket-bucket-1234"
}

resource "aws_dynamodb_table" "my_dynamo_table"{
  name         = "terraweek_state_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name       = "LockID"
    type       = "S"
  }
}
