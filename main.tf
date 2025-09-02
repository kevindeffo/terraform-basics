terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = var.aws_region
}

provider "random" {}

resource "random_id" "bucket_suffix" {
    byte_length = 8
}

resource "aws_s3_bucket" "kevin_bucket" {
    bucket = "${var.bucket_name_prefix}-${random_id.bucket_suffix.hex}"

    tags = {
        Name        = "${var.bucket_name_prefix}-bucket"
        Environment = "dev"
    }
}

resource "aws_instance" "terraform-kevin" {
    ami           = var.ami_id
    instance_type = var.instance_type

    tags = {
        "Name" = var.instance_name
    }
}