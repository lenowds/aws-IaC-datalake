resource "aws_s3_object" "job_spark" {
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspark/job_spark_from_tf.py"
  source = "../job_spark.py"
  etag   = filemd5("../job_spark.py")
}