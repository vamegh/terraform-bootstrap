output "kms_alias_arn" {
  value       = aws_kms_alias.tf_bootstrap.arn
  description = "KMS Terraform bootstrap key alias ARN"
}

output "kms_key_arn" {
  value       = aws_kms_key.tf_bootstrap.arn
  description = "KMS Terraform bootstrap key ARN"
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.state.arn
  description = "Terraform S3 state bucket ARN"
}

output "state_table_arn" {
  value       = aws_dynamodb_table.state_locking_table.arn
  description = "Terraform DynamoDB ARN"
}

output "kms_alias_name" {
  value       = aws_kms_alias.tf_bootstrap.name
  description = "KMS Terraform boostrap key alias name"
}

output "kms_key_name" {
  value       = aws_kms_key.tf_bootstrap.key_id
  description = "KMS Terraform bootstrap key name/id"
}

output "state_bucket_name" {
  value       = aws_s3_bucket.state.id
  description = "Terraform S3 state bucket name"
}

output "state_table_name" {
  value       = aws_dynamodb_table.state_locking_table.id
  description = "Terraform DynamoDB table name"
}

