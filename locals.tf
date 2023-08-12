locals {
  description               = var.description == null ? var.name : var.description
  image_uri                 = "${data.aws_ecr_repository.this.repository_url}:var.image_tag"
  tags                      = merge({ Name = var.name }, var.tags)
  cloudwatch_log_group_name = "/aws/lambda/${var.name}"
}
