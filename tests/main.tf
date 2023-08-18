resource "random_pet" "this" {
  length    = 2
  separator = "-"
  keepers = {
    aws_ecr_repository_name = var.aws_ecr_repository_name
    image_tag               = var.image_tag
    memory_size             = var.memory_size
    timeout                 = var.timeout
    architecture            = var.architecture
  }
}

module "this" {
  source                  = "../"
  name                    = random_pet.this.id
  aws_ecr_repository_name = var.aws_ecr_repository_name
  image_tag               = var.image_tag
  memory_size             = var.memory_size
  timeout                 = var.timeout
  architectures           = [var.architecture]
}
