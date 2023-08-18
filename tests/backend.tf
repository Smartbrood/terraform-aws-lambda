terraform {
  backend "s3" {
    bucket = "tfstates.smartbrood.com"
    key    = "terraform-aws-lambda.tfstate"
    region = "eu-west-1"
    dynamodb_table = "tf-state-locks"
  }
}