terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_dynamodb_table" "table" {
  name         = "areshok"
  hash_key     = "id"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "id"
    type = "S"
  }

}
# test


