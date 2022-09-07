resource "aws_s3_bucket" "dl" {
  bucket = "datalake-vini-xp-tf"
  acl    = "private"

  tags = {
    IES   = "XP",
    CURSO = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}