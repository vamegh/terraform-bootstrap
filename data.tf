data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "enforce_tls" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    effect = "Deny"

    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.state.arn,
      "${aws_s3_bucket.state.arn}/*",
    ]

    condition {
      test = "Bool"
      values = [
        "false"
      ]
      variable = "aws:SecureTransport"
    }
    condition {
      test = "NumericLessThan"
      values = [
        "1.2"
      ]
      variable = "s3:TlsVersion"
    }
  }
}
