terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2" 
    }
 }
  backend "s3" {
    region         = "us-east-1"
    bucket         = "terraform-backend930981"
    key            = "services/tf-workspace/default/project.tfstate"
    use_lockfile   = "true"
      # dynamodb_table = "terraform-locks"
  }
  required_version = "~>1.10"
  }

provider "aws" {
  region = var.region
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
  type        = string
}