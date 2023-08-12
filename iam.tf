resource "aws_iam_role" "this" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.AssumeRole
  tags               = local.tags
}

resource "aws_iam_role_policy_attachment" "AWSLambdaBasicExecutionRole" {
  role       = aws_iam_role.this.name
  policy_arn = data.aws_iam_policy.AWSLambdaBasicExecutionRole.arn
}