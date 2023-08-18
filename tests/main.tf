resource "random_pet" "this" {
  length    = 2
  separator = "-"
  keepers = {
    memory_size  = var.memory_size
    timeout      = var.timeout
    architecture = var.architecture
  }
}

module "this" {
  source                  = "../"
  name                    = random_pet.this.id
  aws_ecr_repository_name = "test"
  image_tag               = "latest"
  memory_size             = var.memory_size
  timeout                 = var.timeout
  architectures           = [var.architecture]
}
