
output "arn" {
  value = aws_lambda_function.this.arn
}

output "alias_arn" {
  value = aws_lambda_alias.this.arn
}

output "alias_name" {
  value = aws_lambda_alias.this.name
}

output "memory_size" {
  value = aws_lambda_function.this.memory_size
}

output "reserved_concurrent_executions" {
  value = aws_lambda_function.this.reserved_concurrent_executions
}

output "ephemeral_storage" {
  value = aws_lambda_function.this.ephemeral_storage
}

output "architectures" {
  value = aws_lambda_function.this.architectures
}

output "timeout" {
  value = aws_lambda_function.this.timeout
}

output "image_uri" {
  value = aws_lambda_function.this.image_uri
}

output "cloudwatch_log_group_retention_in_days" {
  value = aws_cloudwatch_log_group.this.retention_in_days
}
