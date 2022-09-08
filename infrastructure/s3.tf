resource "aws_s3_bucket" "dl" {
  bucket = "datalake-lfs-edc-tf"
  acl = "private"

  tags = {
    ENVIROMENT = "PRODUCTION"
  }

  server_side_encryption_configuration {
    rule {
      sse_algorithm = "AES256"
    }
  }
}