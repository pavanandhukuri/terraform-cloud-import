provider "aws" {
  region = "ap-south-1"
}
resource "aws_s3_bucket" "b" {
  bucket = "pavan-terraform-import-bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
