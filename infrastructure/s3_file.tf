resource "aws_s3_bucket_object" "job_spark"{
    bucket = aws_s3_bucket.dl.id
    key = "emr-code/pyspark/job_spark_from_tf.py"
    acl = "private"
    source = "../jobSpark.py"
    etag = filemd5("../jobSpark.py")
}