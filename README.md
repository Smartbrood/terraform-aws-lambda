[![Terraform](https://github.com/Smartbrood/terraform-aws-lambda/actions/workflows/terraform-validate-apply.yml/badge.svg)](https://github.com/Smartbrood/terraform-aws-lambda/actions/workflows/terraform-validate-apply.yml)
# terraform-aws-lambda

Terraform module to create AWS Lambda based on docker image.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.11.0 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.AWSLambdaBasicExecutionRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_alias) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_provisioned_concurrency_config.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_provisioned_concurrency_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_ecr_repository_name"></a> [aws\_ecr\_repository\_name](#input\_aws\_ecr\_repository\_name) | Name of AWS Elastic Container Registry repository | `string` | n/a | yes |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | Tag of Docker Image in ECR repository | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of Lambda function | `string` | n/a | yes |
| <a name="input_alias"></a> [alias](#input\_alias) | Name of Alias for Lambda function | `string` | `"active"` | no |
| <a name="input_architectures"></a> [architectures](#input\_architectures) | Instruction set architecture for your Lambda function | `list(string)` | <pre>[<br>  "x86_64"<br>]</pre> | no |
| <a name="input_cloudwatch_log_group_retention_in_days"></a> [cloudwatch\_log\_group\_retention\_in\_days](#input\_cloudwatch\_log\_group\_retention\_in\_days) | Specifies the number of days you want to retain log events in the specified log group | `number` | `7` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for Lambda function | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Map of environment variables that are accessible from the function code during execution | `map(string)` | `{}` | no |
| <a name="input_ephemeral_storage"></a> [ephemeral\_storage](#input\_ephemeral\_storage) | The size of the Lambda function Ephemeral storage | `number` | `512` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | Amount of memory in MB your Lambda Function can use at runtime. | `number` | `128` | no |
| <a name="input_package_type"></a> [package\_type](#input\_package\_type) | Package Type for Lambda | `string` | `"Image"` | no |
| <a name="input_provisioned_concurrent_executions"></a> [provisioned\_concurrent\_executions](#input\_provisioned\_concurrent\_executions) | Manages a Lambda Provisioned Concurrency Configuration. Amount of capacity to allocate | `number` | `0` | no |
| <a name="input_publish"></a> [publish](#input\_publish) | Whether to publish new version of Lambda | `bool` | `true` | no |
| <a name="input_reservedConcurrentExecutions"></a> [reservedConcurrentExecutions](#input\_reservedConcurrentExecutions) | Amount of reserved concurrent executions for this lambda function | `number` | `-1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | AWS Tags | `map(string)` | `{}` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Amount of time your Lambda Function has to run in seconds | `number` | `60` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias_arn"></a> [alias\_arn](#output\_alias\_arn) | n/a |
| <a name="output_alias_name"></a> [alias\_name](#output\_alias\_name) | n/a |
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |