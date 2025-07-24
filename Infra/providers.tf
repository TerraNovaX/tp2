terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-backend-terraformbackends3bucket-ldfdhz4ilmzg"
    key            = "infra/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-backend-TerraformBackendDynamoDBTable-B16JHQR2UCO"
  }
}
provider "aws" {
  region = "eu-west-1"
  profile = "admin"
}