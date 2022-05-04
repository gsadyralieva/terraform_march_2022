resource "aws_s3_bucket" "static_web" {
  bucket = replace(local.name, "rtype", "web-frontend")
  acl    = "private"
  tags   = merge(local.tags, { Name = replace(local.name, "rtype", "web-frontend") })
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "static_web" {
  bucket = aws_s3_bucket.static_web.id
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "allow_cloudfront" {
  bucket = aws_s3_bucket.static_web.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression's result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "CloudfrontReadS3Bucket"
    Statement = [
      {
        Sid       = "ReadOnlyCloudfrontOAI"
        Effect    = "Allow"
        Principal = {"AWS": "${aws_cloudfront_origin_access_identity.main.iam_arn}" }
        Action    = "s3:GetObject"
        Resource = [
          "${aws_s3_bucket.static_web.arn}/*",
        ]
      },
    ]
  })
}