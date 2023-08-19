resource "aws_lambda_function" "this" {
  function_name = var.name
  role          = aws_iam_role.this.arn
  description   = local.description
  memory_size   = var.memory_size
  timeout       = var.timeout
  reserved_concurrent_executions = var.reserved_concurrent_executions
  package_type  = var.package_type
  image_uri     = local.image_uri
  architectures = var.architectures
  publish       = var.publish
  tags          = local.tags

  dynamic "environment" {
    for_each = length(keys(var.environment)) == 0 ? toset([]) : toset([true])
    content {
      variables = var.environment
    }
  }

  ephemeral_storage {
    size = var.ephemeral_storage
  }

  depends_on = [
    aws_cloudwatch_log_group.this
  ]
}

resource "aws_lambda_alias" "this" {
  name             = var.alias
  description      = local.description
  function_name    = aws_lambda_function.this.arn
  function_version = aws_lambda_function.this.version
}

resource "aws_lambda_provisioned_concurrency_config" "this" {
  for_each                          = var.provisioned_concurrent_executions == 0 ? toset([]) : toset([aws_lambda_alias.this.name])
  function_name                     = aws_lambda_alias.this.function_name
  qualifier                         = aws_lambda_alias.this.name
  provisioned_concurrent_executions = var.provisioned_concurrent_executions
}
