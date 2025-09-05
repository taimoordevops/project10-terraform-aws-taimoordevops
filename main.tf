resource "aws_s3_bucket" "project10_bucket" {
  bucket = "project10-bucket-${random_id.rand.hex}"
  acl    = "private"
}

resource "random_id" "rand" {
  byte_length = 4
}