
output "arn" {
  value = module.this.arn
}

output "alias_arn" {
  value = module.this.alias_arn
}

output "alias_name" {
  value = module.this.alias_name
}

output "memory_size" {
  value = module.this.memory_size
}

output "reserved_concurrent_executions" {
  value = module.this.reserved_concurrent_executions
}

output "ephemeral_storage" {
  value = module.this.ephemeral_storage
}

output "architectures" {
  value = module.this.architectures
}

output "timeout" {
  value = module.this.timeout
}

output "image_uri" {
  value = module.this.image_uri
}

output "cloudwatch_log_group_retention_in_days" {
  value = module.this.cloudwatch_log_group_retention_in_days
}
