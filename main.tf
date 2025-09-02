provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = var.aws_region
}

resource "aws_instance" "terraform-kevin" {
    ami           = var.ami_id
    instance_type = var.instance_type

    tags = {
        "Name" = var.instance_name
    }
}