
output "arn" {
  value = aws_lambda_function.this.arn
}

output "alias_arn" {
  value = aws_lambda_alias.this.arn
}

output "alias_name" {
  value = aws_lambda_alias.this.name
}
