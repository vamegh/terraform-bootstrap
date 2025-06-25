resource "aws_s3_bucket" "state" {
  bucket = local.name
  tags   = local.tags
}

resource "aws_s3_bucket_server_side_encryption_configuration" "state" {
  bucket = aws_s3_bucket.state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.tf_bootstrap.arn
    }
  }
}

resource "aws_s3_bucket_versioning" "state" {
  bucket = aws_s3_bucket.state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "enforce_tls" {
  count  = var.enable_tls ? 1 : 0
  bucket = aws_s3_bucket.state.id
  policy = data.aws_iam_policy_document.enforce_tls.json
}

resource "aws_s3_bucket_logging" "state" {
  count  = length(var.logging_bucket) > 1 ? 1 : 0
  bucket = aws_s3_bucket.state.id

  target_bucket = var.logging_bucket
  target_prefix = "log/${local.name}/"
}
