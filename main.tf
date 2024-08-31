# Create S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
#  ensure that everything inside the bucket is owned by the bucket owner
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }

}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.example.id
  acl    = "public-read"
}
#  uploading an object in bucket
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.example.id
  key = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}
#  for error.html
resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.example.id
  key = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"
}

#  for image
resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.example.id
  key = "profile.jpeg"
  source = "profile.jpeg"
  acl = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.example.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]

}