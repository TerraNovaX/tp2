terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-backend-terraformbackends3bucket-2sq6pvc6m1xd"
    key            = "infra/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-backend-TerraformBackendDynamoDBTable-17FOOQH8S5SFQ"
  }
}
provider "aws" {
  region = "eu-west-1"
  profile = "admin"
}