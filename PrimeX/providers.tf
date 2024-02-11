terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5UPRSOAWGUSS2JCH"
  secret_key = "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"
}