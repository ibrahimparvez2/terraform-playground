resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name
    tags = var.tags
}

resource "aws_s3_bucket_acl" "s3_bucket" {
    bucket = aws_s3_bucket.s3_bucket.id

    acl = var.acl_value
} 