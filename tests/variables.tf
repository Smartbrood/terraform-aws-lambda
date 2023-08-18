variable "aws_ecr_repository_name" {
  type = string
  default = "test"
}

variable "image_tag" {
  type = string
  default = "latest"
}

variable "memory_size" {
  type    = number
  default = 128
}

variable "timeout" {
  type    = number
  default = 60
}

variable "architecture" {
  type    = string
  default = "x86_64"
}
