terraform {
  required_providers {
    clickhouse = {
      source  = "ClickHouse/clickhouse"
      version = "0.0.5-beta.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.56.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

