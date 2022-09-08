resource "aws_s3_bucket" "dl" {
  bucket = "datalake-lfs-edc-tf"
  acl = "private"

  tags = {
    ENVIROMENT = "PRODUCTION"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}