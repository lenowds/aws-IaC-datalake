resource "aws_s3_bucket" "dl" {
  bucket = "datalake-lfs-edc-tf"

  tags = {
    ENVIROMENT = "PRODUCTION"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.dl.id
  acl    = "private"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
  bucket = aws_s3_bucket.dl.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}