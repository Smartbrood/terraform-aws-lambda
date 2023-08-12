variable "name" {
  description = "Name of Lambda function"
  type        = string
}

variable "description" {
  description = "Description for Lambda function"
  type        = string
  default     = null
}

variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  type        = number
  default     = 128
}

variable "timeout" {
  description = "Amount of time your Lambda Function has to run in seconds"
  type        = number
  default     = 60
}

variable "architectures" {
  description = "Instruction set architecture for your Lambda function"
  type        = list(string)
  default     = ["x86_64"]
}

variable "reservedConcurrentExecutions" {
  description = "Amount of reserved concurrent executions for this lambda function"
  type        = number
  default     = -1
}

variable "environment" {
  description = "Map of environment variables that are accessible from the function code during execution"
  type        = map(string)
  default     = {}
}

variable "ephemeral_storage" {
  description = "The size of the Lambda function Ephemeral storage"
  type        = number
  default     = 512
}

variable "provisioned_concurrent_executions" {
  description = "Manages a Lambda Provisioned Concurrency Configuration. Amount of capacity to allocate"
  type        = number
  default     = 0
}

variable "alias" {
  description = "Name of Alias for Lambda function"
  type        = string
  default     = "active"
}

variable "aws_ecr_repository_name" {
  description = "Name of AWS Elastic Container Registry repository"
  type        = string
}

variable "image_tag" {
  description = "Tag of Docker Image in ECR repository"
  type        = string
}

variable "publish" {
  description = "Whether to publish new version of Lambda"
  type        = bool
  default     = true
}

variable "package_type" {
  description = "Package Type for Lambda"
  type        = string
  default     = "Image"
}

variable "tags" {
  description = "AWS Tags"
  type        = map(string)
  default     = {}
}

variable "cloudwatch_log_group_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
  type        = number
  default     = 7
}


