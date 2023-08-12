resource "aws_lambda_function" "this" {
  function_name = var.name
  role          = aws_iam_role.this.arn
  description   = local.description
  memory_size   = var.memory_size
  package_type  = var.package_type
  image_uri     = local.image_uri
  architectures = var.architectures
  publish       = var.publish
  tags          = local.tags
}

resource "aws_lambda_alias" "this" {
  name             = var.alias
  description      = local.description
  function_name    = aws_lambda_function.this.arn
  function_version = aws_lambda_function.this.version
}

resource "aws_lambda_provisioned_concurrency_config" "this" {
  for_each                          = var.provisioned_concurrent_executions == 0 ? [] : [true]
  function_name                     = aws_lambda_alias.this.function_name
  qualifier                         = aws_lambda_alias.this.name
  provisioned_concurrent_executions = var.provisioned_concurrent_executions
}
