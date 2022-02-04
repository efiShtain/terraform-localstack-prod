resource "aws_s3_bucket" "bucket" {
  bucket = "test-bucket"
  acl    = "private"
  region = "eu-west-1"
}
