terraform {
  backend "s3" {
    bucket         = "terraform-state-xking"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-xking-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}