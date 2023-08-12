resource "aws_cloudwatch_log_group" "this" {
  name              = local.cloudwatch_log_group_name
  retention_in_days = var.cloudwatch_log_group_retention_in_days
  tags              = local.tags
}
