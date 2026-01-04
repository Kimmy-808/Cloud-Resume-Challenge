terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
resource "aws_dynamodb_table" "portfolio_traffic" {
  name         = "portfolio_traffic"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
resource "aws_dynamodb_table_item" "counter_item" {
  table_name = aws_dynamodb_table.portfolio_traffic.name
  hash_key   = aws_dynamodb_table.portfolio_traffic.hash_key

  item = jsonencode({
    id    = { S = "visits" }
    count = { N = "0" }
  })
}
