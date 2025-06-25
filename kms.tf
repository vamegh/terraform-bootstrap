resource "aws_kms_key" "tf_bootstrap" {
  description             = "Terraform Bootstrap KMS Key"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_kms_alias" "tf_bootstrap" {
  name          = "alias/tf-bootstrap-key"
  target_key_id = aws_kms_key.tf_bootstrap.key_id
}
