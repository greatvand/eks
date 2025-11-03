output "s3_bucket_name" {
  value = aws_s3_bucket.s3_remote_backend.bucket
  description = "The name of the S3 bucket used for the Terraform remote backend"
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.dynamodb_lock_table.name
  description = "The name of the DynamoDB table used for state locking"
}